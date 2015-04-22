package Thruk::Controller::reports2;

use strict;
use warnings;
use Thruk 1.60;
use Carp;
use parent 'Catalyst::Controller';
use File::Slurp;
use JSON::XS;
use Thruk::Utils::Reports;

=head1 NAME

Thruk::Controller::reports2 - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

######################################
# add new menu item
Thruk::Utils::Menu::insert_item('Reports', {
                                    'href'  => '/thruk/cgi-bin/reports2.cgi',
                                    'name'  => 'Reporting',
                         });

# enable reporting features if this plugin is loaded
Thruk->config->{'use_feature_reports'} = 'reports2.cgi';

######################################

=head2 reports2_cgi

page: /thruk/cgi-bin/reports2.cgi

=cut
sub reports2_cgi : Path('/thruk/cgi-bin/reports2.cgi') {
    my ( $self, $c ) = @_;
    return if defined $c->{'canceled'};
    return $c->detach('/reports2/index');
}

##########################################################

=head2 index

=cut
sub index :Path :Args(0) :MyAction('AddCachedDefaults') {
    my ( $self, $c ) = @_;

    $c->stash->{'no_auto_reload'}      = 1;
    $c->stash->{title}                 = 'Reports';
    $c->stash->{page}                  = 'status'; # otherwise we would have to create a reports.css for every theme
    $c->stash->{template}              = 'reports.tt';
    $c->stash->{subtitle}              = 'Reports';
    $c->stash->{infoBoxTitle}          = 'Reporting';
    $c->stash->{has_jquery_ui}         = 1;
    $c->stash->{'wkhtmltopdf'}         = 1;

    $Thruk::Utils::CLI::c              = $c;

    my $report_nr = $c->{'request'}->{'parameters'}->{'report'};
    my $action    = $c->{'request'}->{'parameters'}->{'action'}    || 'show';
    my $highlight = $c->{'request'}->{'parameters'}->{'highlight'} || '';
    my $refresh   = 0;
    $refresh = $c->{'request'}->{'parameters'}->{'refresh'} if exists $c->{'request'}->{'parameters'}->{'refresh'};

    if(ref $action eq 'ARRAY') { $action = pop @{$action}; }

    if($action eq 'updatecron') {
        if(Thruk::Utils::Reports::update_cron_file($c)) {
            Thruk::Utils::set_message( $c, { style => 'success_message', msg => 'updated crontab' });
        } else {
            Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'failed to update crontab' });
        }
        return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
    }

    if($action eq 'check_affected_objects') {
        $c->{'request'}->{'parameters'}->{'get_total_numbers_only'} = 1;
        my @res;
        my $backends = $c->{'request'}->{'parameters'}->{'backends'} || $c->{'request'}->{'parameters'}->{'backends[]'};
        my $template = $c->{'request'}->{'parameters'}->{'template'};
        my $sub;
        if($template) {
            eval {
                $sub = Thruk::Utils::get_template_variable($c, 'reports/'.$template, 'affected_sla_objects', { block => 'edit' }, 1);
            };
        }
        $sub = 'Thruk::Utils::Avail::calculate_availability' unless $sub;
        if($backends and ($c->{'request'}->{'parameters'}->{'backends_toggle'} or $c->{'request'}->{'parameters'}->{'report_backends_toggle'})) {
            $c->{'db'}->disable_backends();
            $c->{'db'}->enable_backends($backends);
        }
        if($c->{'request'}->{'parameters'}->{'param'}) {
            for my $str (split/&/mx, $c->{'request'}->{'parameters'}->{'param'}) {
                my($key,$val) = split(/=/mx, $str, 2);
                if($key =~ s/^params\.//mx) {
                    $c->{'request'}->{'parameters'}->{$key} = $val unless exists $c->{'request'}->{'parameters'}->{$key};
                }
            }
        }
        eval {
            $Thruk::Utils::Reports::Render::c = $c;
            eval {
                require Thruk::Utils::Reports::CustomRender;
            };
            @res = &{\&{$sub}}($c);
        };
        if($@ or scalar @res == 0) {
            $c->stash->{'json'}   = { 'hosts' => 0, 'services' => 0, 'error' => $@ };
        } else {
            my $total    = $res[0] + $res[1];
            my $too_many = $total > $c->config->{'report_max_objects'} ? 1 : 0;
            $c->stash->{'json'}   = { 'hosts' => $res[0], 'services' => $res[1], 'too_many' => $too_many };
        }
        return $c->forward('Thruk::View::JSON');
    }

    if(defined $report_nr) {
        if($report_nr !~ m/^\d+$/mx and $report_nr ne 'new') {
            Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'invalid report number: '.$report_nr });
            return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
        }
        if($action eq 'show') {
            if(!Thruk::Utils::Reports::report_show($c, $report_nr, $refresh)) {
                Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'no such report', code => 404 });
            }
        }
        elsif($action eq 'edit') {
            return $self->report_edit($c, $report_nr);
        }
        elsif($action eq 'edit2') {
            return $self->report_edit_step2($c, $report_nr);
        }
        elsif($action eq 'update') {
            return $self->report_update($c, $report_nr);
        }
        elsif($action eq 'save') {
            return $self->report_save($c, $report_nr);
        }
        elsif($action eq 'remove') {
            return $self->report_remove($c, $report_nr);
        }
        elsif($action eq 'email') {
            return $self->report_email($c, $report_nr);
        }
    }

    if($c->config->{'Thruk::Plugin::Reports2'}->{'wkhtmltopdf'} and !-x $c->config->{'Thruk::Plugin::Reports2'}->{'wkhtmltopdf'}) {
        $c->stash->{'wkhtmltopdf'} = 0;
        $c->stash->{'wkhtmltopdf_file'} = $c->config->{'Thruk::Plugin::Reports2'}->{'wkhtmltopdf'};
    }

    # show list of configured reports
    $c->stash->{'no_auto_reload'} = 0;
    $c->stash->{'highlight'}      = $highlight;
    $c->stash->{'reports'}        = Thruk::Utils::Reports::get_report_list($c);

    Thruk::Utils::ssi_include($c);

    return 1;
}

##########################################################

=head2 report_edit

=cut
sub report_edit {
    my($self, $c, $report_nr) = @_;

    my $r;
    $c->stash->{'params'} = {};
    if($report_nr eq 'new') {
        $r = Thruk::Utils::Reports::_get_new_report($c);
        # set currently enabled backends
        $r->{'backends'} = [];
        for my $b (keys %{$c->stash->{'backend_detail'}}) {
            push @{$r->{'backends'}}, $b if $c->stash->{'backend_detail'}->{$b}->{'disabled'} == 0;
        }
        for my $key (keys %{$c->{'request'}->{'parameters'}}) {
            if($key =~ m/^params\.(.*)$/mx) {
                $c->stash->{'params'}->{$1} = $c->{'request'}->{'parameters'}->{$key};
            } else {
                $r->{$key} = $c->{'request'}->{'parameters'}->{$key} if defined $c->{'request'}->{'parameters'}->{$key};
            }
        }
        $r->{'template'} = $c->{'request'}->{'parameters'}->{'template'} || $c->config->{'Thruk::Plugin::Reports2'}->{'default_template'} || 'sla_host.tt';
        if($c->{'request'}->{'parameters'}->{'params.url'}) {
            $r->{'params'}->{'url'} = $c->{'request'}->{'parameters'}->{'params.url'};
        }
    } else {
        $r = Thruk::Utils::Reports::_read_report_file($c, $report_nr);
        if(!defined $r or $r->{'readonly'}) {
            Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'cannot change report' });
            return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
        }
    }

    $c->stash->{templates} = Thruk::Utils::Reports::get_report_templates($c);
    $self->_set_report_data($c, $r);

    Thruk::Utils::ssi_include($c);
    $c->stash->{template} = 'reports_edit.tt';
    return;
}

##########################################################

=head2 report_edit_step2

=cut
sub report_edit_step2 {
    my($self, $c, $report_nr) = @_;

    my $r;
    if($report_nr eq 'new') {
        $r = Thruk::Utils::Reports::_get_new_report($c);
    } else {
        $r = Thruk::Utils::Reports::_read_report_file($c, $report_nr);
        if(!defined $r or $r->{'readonly'}) {
            Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'cannot change report' });
            return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
        }
    }

    my $template     = $c->{'request'}->{'parameters'}->{'template'};
    $r->{'template'} = $template if defined $template;

    $self->_set_report_data($c, $r);

    $c->stash->{template} = 'reports_edit_step2.tt';
    return;
}


##########################################################

=head2 report_save

=cut
sub report_save {
    my($self, $c, $report_nr) = @_;

    return unless Thruk::Utils::check_csrf($c);

    my $params = $c->{'request'}->{'parameters'};
    $params->{'params.t1'} = Thruk::Utils::parse_date($c, $params->{'t1'}) if defined $params->{'t1'};
    $params->{'params.t2'} = Thruk::Utils::parse_date($c, $params->{'t2'}) if defined $params->{'t2'};

    my($data) = Thruk::Utils::Reports::get_report_data_from_param($params);
    my $msg = 'report updated';
    if($report_nr eq 'new') { $msg = 'report created'; }
    my $report;
    if($report = Thruk::Utils::Reports::report_save($c, $report_nr, $data)) {
        if(Thruk::Utils::Reports::update_cron_file($c)) {
            if(defined $report->{'var'}->{'opt_errors'}) {
                Thruk::Utils::set_message( $c, { style => 'fail_message', msg => "Error in Report Options:<br>".join("<br>", @{$report->{'var'}->{'opt_errors'}}) });
            } else {
                Thruk::Utils::set_message( $c, { style => 'success_message', msg => $msg });
            }
        }
    } else {
        Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'no such report', code => 404 });
    }
    return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi?highlight=".$report_nr);
}

##########################################################

=head2 report_update

=cut
sub report_update {
    my($self, $c, $report_nr) = @_;

    my $report = Thruk::Utils::Reports::_read_report_file($c, $report_nr);
    if($report) {
        Thruk::Utils::Reports::set_running($c, $report_nr, -1, time());
        my $cmd = Thruk::Utils::Reports::_get_report_cmd($c, $report, 0);
        Thruk::Utils::Reports::clean_report_tmp_files($c, $report_nr);
        my $job = Thruk::Utils::External::cmd($c, { cmd => $cmd, 'background' => 1, 'no_shell' => 1 });
        Thruk::Utils::Reports::set_running($c, $report_nr, undef, undef, undef, $job);
        Thruk::Utils::set_message( $c, { style => 'success_message', msg => 'report scheduled for update' });
    } else {
        Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'no such report', code => 404 });
    }
    return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
}

##########################################################

=head2 report_remove

=cut
sub report_remove {
    my($self, $c, $report_nr) = @_;

    return unless Thruk::Utils::check_csrf($c);

    if(Thruk::Utils::Reports::report_remove($c, $report_nr)) {
        Thruk::Utils::set_message( $c, { style => 'success_message', msg => 'report removed' });
    } else {
        Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'no such report', code => 404 });
    }
    return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
}

##########################################################

=head2 report_email

=cut
sub report_email {
    my($self, $c, $report_nr) = @_;

    my $r = Thruk::Utils::Reports::_read_report_file($c, $report_nr);
    if(!defined $r) {
        Thruk::Utils::set_message( $c, { style => 'fail_message', msg => 'report does not exist' });
        return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi");
    }

    if($c->{'request'}->{'parameters'}->{'send'}) {
        return unless Thruk::Utils::check_csrf($c);
        my $to      = $c->{'request'}->{'parameters'}->{'to'}      || '';
        my $cc      = $c->{'request'}->{'parameters'}->{'cc'}      || '';
        my $desc    = $c->{'request'}->{'parameters'}->{'desc'}    || '';
        my $subject = $c->{'request'}->{'parameters'}->{'subject'} || '';
        if($to) {
            Thruk::Utils::Reports::report_send($c, $report_nr, 1, $to, $cc, $subject, $desc);
            Thruk::Utils::set_message( $c, { style => 'success_message', msg => 'report successfully sent by e-mail' });
            return $c->response->redirect($c->stash->{'url_prefix'}."cgi-bin/reports2.cgi?highlight=".$report_nr);
        }
        Thruk::Utils::set_message( $c, { style => 'success_message', msg => '\'to\' address missing' });
    }

    $c->stash->{size}    = -s $c->config->{'tmp_path'}.'/reports/'.$r->{'nr'}.'.dat';
    $c->stash->{attach}  = $r->{'var'}->{'attachment'} || 'report.pdf';
    $c->stash->{subject} = $r->{'subject'} || 'Report: '.$r->{'name'};
    $c->stash->{r}       = $r;

    Thruk::Utils::ssi_include($c);
    $c->stash->{template} = 'reports_email.tt';
    return;
}

##########################################################
sub _set_report_data {
    my($self, $c, $r) = @_;

    $c->stash->{'t1'} = $r->{'params'}->{'t1'} || time() - 86400;
    $c->stash->{'t2'} = $r->{'params'}->{'t2'} || time();
    $c->stash->{'t1'} = $c->stash->{'t1'} - $c->stash->{'t1'}%60;
    $c->stash->{'t2'} = $c->stash->{'t2'} - $c->stash->{'t2'}%60;

    $c->stash->{r}           = $r;
    $c->stash->{timeperiods} = $c->{'db'}->get_timeperiods(filter => [Thruk::Utils::Auth::get_auth_filter($c, 'timeperiods')], remove_duplicates => 1, sort => 'name');
    $c->stash->{languages}   = Thruk::Utils::Reports::get_report_languages($c);

    Thruk::Utils::Reports::add_report_defaults($c, undef, $r);

    return;
}

##########################################################

=head1 AUTHOR

Sven Nierlein, 2009-2014, <sven@nierlein.org>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;

; <?php exit(1); ?>
; Do not edit this file. Your changes will be overwritten.
; This file is controlled by the OMD hook NAGVIS_URLS.
;
; Written by OMD hook NAGVIS_URLS at Fri May 23 17:05:48 CST 2014.
[paths]
htmlcgi="/dev/check_mk"

[defaults]
hosturl="[htmlcgi]/view.py?view_name=host&site=&host=[host_name]"
hostgroupurl="[htmlcgi]/view.py?view_name=hostgroup&site=&hostgroup=[hostgroup_name]"
serviceurl="[htmlcgi]/view.py?view_name=service&site=&host=[host_name]&service=[service_description]"
servicegroupurl="[htmlcgi]/view.py?view_name=servicegroup&site=&servicegroup=[servicegroup_name]"

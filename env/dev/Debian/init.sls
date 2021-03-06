apt-sources:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://Debian/{{ grains['os'] }}/sources.list.jinja
    - template: jinja

apt_proxy:
  file.managed:
    - name: /etc/apt/apt.conf.d/00proxy
    - source: salt://Debian/apt.conf

basic_pkgs:
  pkg.installed:
    - names:
      - iptables
      - chkconfig
      - iptstate

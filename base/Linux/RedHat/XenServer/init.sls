enable_pxe:
  file.managed:
    - name: /usr/sbin/bootutil32
    - source: salt://RedHat/XenServer/bootutil32
    - mode: 0644
  cmd.run:
    - name: bootutil32 -STE > /dev/null
    - stateful: True

virt-what:
  pkg.installed

/root/.set_ubuntu_pv_args.sh:
  file.managed:
    - source: salt://RedHat/XenServer/set_ubuntu_pv_args.sh
    - mode: 0755

/tmp/xs_patcher:
  file.managed:
    - source: salt://RedHat/XenServer/xs_patcher.sh
    - mode: 0755

save_ubuntu_pv_args:
  cmd.run:
    - name: /root/.set_ubuntu_pv_args.sh
    - stateful: True
    - require:
      - file: /root/.set_ubuntu_pv_args.sh

disabl_citrix_repo:
  cmd.run:
    - name: sed -i '/enabled=1/s/1/0/' /etc/yum.repos.d/Citrix.repo
    - onlyif: test -f /etc/yum.repos.d/Citrix.repo
    - stateful: True

AWS

OS used:
Linux RedHat 7.2
RHEL-7.2_HVM-20161025-x86_64-1-Hourly2-GP2 - ami-7def1712

Diskspace on each machine

Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  930M   50G   2% /
[root@ip-172-31-2-226 ~]#

[root@ip-172-31-2-226 ~]# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  929M   50G   2% /

[root@ip-172-31-8-165 ~]# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  932M   50G   2% /
[root@ip-172-31-8-165 ~]#

[root@ip-172-31-1-44 ~]# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  930M   50G   2% /
[root@ip-172-31-1-44 ~]#

[root@ip-172-31-9-243 ~]# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  929M   50G   2% /
[root@ip-172-31-9-243 ~]#


[root@ip-172-31-2-226 ~]# yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
rhui-REGION-client-config-server-7                | 2.9 kB     00:00
rhui-REGION-rhel-server-releases                  | 3.5 kB     00:00
rhui-REGION-rhel-server-rh-common                 | 3.8 kB     00:00
(1/7): rhui-REGION-client-config-server-7/x86_64/pr | 4.3 kB   00:00
(2/7): rhui-REGION-rhel-server-releases/7Server/x86 | 701 kB   00:00
(3/7): rhui-REGION-rhel-server-rh-common/7Server/x8 |  104 B   00:00
(4/7): rhui-REGION-rhel-server-rh-common/7Server/x8 |  33 kB   00:00
(5/7): rhui-REGION-rhel-server-releases/7Server/x86 | 1.9 MB   00:00
(6/7): rhui-REGION-rhel-server-rh-common/7Server/x8 | 118 kB   00:00
(7/7): rhui-REGION-rhel-server-releases/7Server/x86 |  36 MB   00:00
repo id                                          repo name         status
rhui-REGION-client-config-server-7/x86_64        Red Hat Update In      4
rhui-REGION-rhel-server-releases/7Server/x86_64  Red Hat Enterpris 14,447
rhui-REGION-rhel-server-rh-common/7Server/x86_64 Red Hat Enterpris    228
repolist: 14,679

[root@ip-172-31-2-226 ~]# egrep "conservative|jeremy|theresa|labour" /etc/passwd /etc/group
/etc/passwd:theresa:x:2000:2000::/home/theresa:/bin/bash
/etc/passwd:jeremy:x:3000:3000::/home/jeremy:/bin/bash
/etc/group:conservative:x:1001:theresa
/etc/group:labour:x:1002:jeremy
/etc/group:theresa:x:2000:
/etc/group:jeremy:x:3000:



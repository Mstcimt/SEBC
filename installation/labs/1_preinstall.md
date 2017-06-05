yum install wget -y

vi /etc/sysctl.conf
vm.swappiness=1


echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled

[root@ip-172-31-11-148 ~]# vi /etc/rc.local

echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled

[root@ip-172-31-11-148 ~]# chmod +x /etc/rc.d/rc.local

 
 [root@ip-172-31-11-148 ~]# mount
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime,seclabel)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,seclabel,size=7599332k,nr_inodes=1899833,mode=755)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,seclabel)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,seclabel,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,seclabel,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,seclabel,mode=755)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,release_agent=/usr/lib/systemd/systemd-cgroups-agent,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
cgroup on /sys/fs/cgroup/net_cls type cgroup (rw,nosuid,nodev,noexec,relatime,net_cls)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpuacct,cpu)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
configfs on /sys/kernel/config type configfs (rw,relatime)
/dev/xvda2 on / type xfs (rw,relatime,seclabel,attr2,inode64,noquota)
selinuxfs on /sys/fs/selinux type selinuxfs (rw,relatime)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=28,pgrp=1,timeout=300,minproto=5,maxproto=5,direct)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
mqueue on /dev/mqueue type mqueue (rw,relatime,seclabel)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,seclabel)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,seclabel,size=1497312k,mode=700,uid=1000,gid=1000)
[root@ip-172-31-11-148 ~]# df
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/xvda2      52416492 1322760  51093732   3% /
devtmpfs         7599332       0   7599332   0% /dev
tmpfs            7486540       0   7486540   0% /dev/shm
tmpfs            7486540   16636   7469904   1% /run
tmpfs            7486540       0   7486540   0% /sys/fs/cgroup
tmpfs            1497312       0   1497312   0% /run/user/1000


[ec2-user@ip-172-31-0-170 ~]$ findmnt
TARGET                           SOURCE     FSTYPE   OPTIONS
/                                /dev/xvda2 xfs      rw,relatime,seclabel,attr2,
├─/sys                           sysfs      sysfs    rw,nosuid,nodev,noexec,rela
│ ├─/sys/kernel/security         securityfs security rw,nosuid,nodev,noexec,rela
│ ├─/sys/fs/cgroup               tmpfs      tmpfs    ro,nosuid,nodev,noexec,secl
│ │ ├─/sys/fs/cgroup/systemd     cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/memory      cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/cpu,cpuacct cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/hugetlb     cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/net_cls     cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/perf_event  cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/devices     cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/freezer     cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ ├─/sys/fs/cgroup/blkio       cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ │ └─/sys/fs/cgroup/cpuset      cgroup     cgroup   rw,nosuid,nodev,noexec,rela
│ ├─/sys/fs/pstore               pstore     pstore   rw,nosuid,nodev,noexec,rela
│ ├─/sys/fs/selinux              selinuxfs  selinuxf rw,relatime
│ ├─/sys/kernel/debug            debugfs    debugfs  rw,relatime
│ └─/sys/kernel/config           configfs   configfs rw,relatime
├─/proc                          proc       proc     rw,nosuid,nodev,noexec,rela
│ └─/proc/sys/fs/binfmt_misc     systemd-1  autofs   rw,relatime,fd=31,pgrp=1,ti
├─/dev                           devtmpfs   devtmpfs rw,nosuid,seclabel,size=759
│ ├─/dev/shm                     tmpfs      tmpfs    rw,nosuid,nodev,seclabel
│ ├─/dev/pts                     devpts     devpts   rw,nosuid,noexec,relatime,s
│ ├─/dev/mqueue                  mqueue     mqueue   rw,relatime,seclabel
│ └─/dev/hugepages               hugetlbfs  hugetlbf rw,relatime,seclabel
└─/run                           tmpfs      tmpfs    rw,nosuid,nodev,seclabel,mo
  └─/run/user/1000               tmpfs      tmpfs    rw,nosuid,nodev,relatime,se

  
 [ec2-user@ip-172-31-0-170 ~]$ mount /
mount: only root can mount UUID=65722bd1-fccc-453e-a96a-8f3599aa0466 on /
[ec2-user@ip-172-31-0-170 ~]$ df -h /
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  1.1G   49G   3% /

vi /etc/fstab
UUID=65722bd1-fccc-453e-a96a-8f3599aa0466 /                       xfs     defaults        0 0


ip a

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc pfifo_fast state UP qlen 1000
    link/ether 06:68:25:13:44:ff brd ff:ff:ff:ff:ff:ff
    inet 172.31.11.148/20 brd 172.31.15.255 scope global dynamic eth0
       valid_lft 2512sec preferred_lft 2512sec
    inet6 fe80::468:25ff:fe13:44ff/64 scope link
       valid_lft forever preferred_lft forever


root@ip-172-31-11-148 network-scripts]#	more|cat|vi /etc/sysconfig/network-scripts/ifcfg-eth0
	
yum install bind-utils
	
root@ip-172-31-11-148 network-scripts]# nslookup naws2
Server:         172.31.0.2
Address:        172.31.0.2#53

** server can't find naws2: NXDOMAIN

[root@ip-172-31-11-148 opt]# vi /etc/sysctl.conf
net.ipv6.conf.all.disable_ipv6 = 1


[root@ip-172-31-11-148 opt]# getent hosts
127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
127.0.0.1       localhost localhost.localdomain localhost6 localhost6.localdomain6
54.93.214.174   maws1 ec2-54-93-214-174.eu-central-1.compute.amazonaws.com ec2-1 c1
54.93.78.253    maws2 ec2-54-93-78-253.eu-central-1.compute.amazonaws.com ec2-2 c2
54.93.84.135    maws3 ec2-54-93-84-135.eu-central-1.compute.amazonaws.com ec2-3 c3
54.93.238.30    maws4 ec2-54-93-238-30.eu-central-1.compute.amazonaws.com ec2-4 c4
52.59.207.246   maws5 ec2-52-59-207-246.eu-central-1.compute.amazonaws.com ec2-5 c5





yum install ntp -y
yum install nscd -y

systemctl start ntpd
systemctl start nscd
systemctl enable ntpd
systemctl enable nscd


systemctl status ntpd
systemctl status nscd

   26  yum install mariadb-server.x86_64
   27  systemctl start mariadb.service
   28  mysql -u root
   29  systemctl enable mariadb.service
/usr/bin/mysql_secure_installation   
   
vi ~/.bash_profile

JAVA_HOME=/opt/java
PATH=$JAVA_HOME:/bin:$PATH:$HOME/bin:.:

export PATH JAVA_HOME


[root@ip-172-31-0-170 ~]# mkdir -p /usr/share/java
[root@ip-172-31-0-170 ~]# cp /Software/mysql-connector-java-5.1.42-bin.jar /usr/share/java
cd /usr/share/java/
 -fs mysql-connector-java-5.1.42-bin.jar mysql-connector-java.jar
 
vi /etc/my.cnf

[mysqld]
log-bin=mysql-bin
server-id=1 # or 2
bind-address=0.0.0.0



GRANT REPLICATION SLAVE ON *.* TO 'user'@'maws2' IDENTIFIED BY 'password';
 

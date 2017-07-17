```
root@ip-172-31-8-234 ~]# mysql -u root -pxxxx
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.5.56 MySQL Community Server (GPL)

Copyright (c) 2000, 2017, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```
```
[root@ip-172-31-8-234 ~]# mysql --version
mysql  Ver 14.14 Distrib 5.5.56, for Linux (x86_64) using readline 5.1
```
```
Hostname AWS
54.93.68.2 ec2-54-93-68-2.eu-central-1.compute.amazonaws.com
Internal
```
```
[root@ip-172-31-8-234 ~]# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc pfifo_fast state UP qlen 1000
    link/ether 06:b2:7a:66:63:b7 brd ff:ff:ff:ff:ff:ff
    inet 172.31.8.234/20 brd 172.31.15.255 scope global dynamic eth0
       valid_lft 3016sec preferred_lft 3016sec
    inet6 fe80::4b2:7aff:fe66:63b7/64 scope link
       valid_lft forever preferred_lft forever
```
	   

```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
| test               |
+--------------------+
10 rows in set (0.00 sec)
```	

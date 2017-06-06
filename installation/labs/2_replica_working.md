vi /etc/my.cnf

[mysqld]
log-bin=mysql-bin
server-id=1 # or 2
bind-address=0.0.0.0



GRANT REPLICATION SLAVE ON *.* TO 'user'@'maws2' IDENTIFIED BY 'password';

Master



GRANT SELECT, PROCESS, FILE, SUPER, REPLICATION CLIENT, REPLICATION SLAVE, RELOAD ON *.* TO replicant@'localhost';
GRANT REPLICATION SLAVE ON *.* TO  'replicant'@'maws2' IDENTIFIED BY 'replicant01';


MariaDB [(none)]> SHOW MASTER STATUS;
+------------------+----------+--------------+------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+------------------+----------+--------------+------------------+
| mysql-bin.000003 |      245 |              |                  |
+------------------+----------+--------------+------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)


CHANGE MASTER TO MASTER_HOST='maws1', MASTER_USER='replicant', MASTER_PASSWORD='replicant01', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=245;
Query OK, 0 rows affected (0.01 sec)

MariaDB [(none)]> START SLAVE;
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: maws1
                  Master_User: replicant
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000003
          Read_Master_Log_Pos: 245
               Relay_Log_File: mariadb-relay-bin.000002
                Relay_Log_Pos: 529
        Relay_Master_Log_File: mysql-bin.000003
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB:
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 245
              Relay_Log_Space: 825
              Until_Condition: None
               Until_Log_File:
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File:
           Master_SSL_CA_Path:
              Master_SSL_Cert:
            Master_SSL_Cipher:
               Master_SSL_Key:
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error:
               Last_SQL_Errno: 0
               Last_SQL_Error:
  Replicate_Ignore_Server_Ids:
             Master_Server_Id: 1
1 row in set (0.00 sec)


Problem:

Amazon EC2 is blocking 3306

https://stackoverflow.com/questions/9766014/connect-to-mysql-on-amazon-ec2-from-a-remote-server


Solution:

It could be that you have not configured the Amazon Security Group assigned to your EC2 Instance to accept incoming requests on port 3306 (default port for MySQL).

If this is the case then you can easily open up the port for the security group in a few button clicks:

1) Log into you AWS Console and go to 'EC2'

2) On the left hand menu under 'Network & Security' go to 'Security Groups'

3) Check the Security Group in question

4) Click on 'Inbound tab'

5) Choose 'MYSQL' from drop down list and click 'Add Rule'



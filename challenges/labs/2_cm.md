
[root@ip-172-31-8-234 yum.repos.d]# ls /etc/yum.repos.d
cloudera-manager.repo    mysql-community.repo  redhat-rhui-client-config.repo  rhui-load-balancers.conf
jdk-8u102-linux-x64.rpm  redhat.repo           redhat-rhui.repo

```
[root@ip-172-31-8-234 /]# /usr/share/cmf/schema/scm_prepare_database.sh mysql cloudera cloudera cloudera
JAVA_HOME=/usr/java/jdk1.8.0_102
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.8.0_102/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!
```
**MFE**: This invocation installs a localhost connection between CM and the MySQL server.

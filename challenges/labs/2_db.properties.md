[root@ip-172-31-8-234 cloudera-scm-server]# cat cloudera-scm-server.out
JAVA_HOME=/usr/java/jdk1.8.0_102
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0


[root@ip-172-31-8-234 cloudera-scm-server]# head cloudera-scm-server.log
2017-06-09 06:15:09,136 INFO main:com.cloudera.server.cmf.Main: Starting SCM Server. JVM Args: [-Dlog4j.configuration=file:/etc/cloudera-scm-server/log4j.properties, -Dfile.encoding=UTF-8, -Dcmf.root.logger=INFO,LOGFILE, -Dcmf.log.dir=/var/log/cloudera-scm-server, -Dcmf.log.file=cloudera-scm-server.log, -Dcmf.jetty.threshhold=WARN, -Dcmf.schema.dir=/usr/share/cmf/schema, -Djava.awt.headless=true, -Djava.net.preferIPv4Stack=true, -Dpython.home=/usr/share/cmf/python, -XX:+UseConcMarkSweepGC, -XX:+UseParNewGC, -XX:+HeapDumpOnOutOfMemoryError, -Xmx2G, -XX:MaxPermSize=256m, -XX:+HeapDumpOnOutOfMemoryError, -XX:HeapDumpPath=/tmp, -XX:OnOutOfMemoryError=kill -9 %p], Args: [], Version: 5.10.1 (#6 built by jenkins on 20170319-2001 git: f226435f6fa5f545543c00245900ae43bea7a29c)
2017-06-09 06:15:09,172 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute entityName as ENTITYNAME
2017-06-09 06:15:09,172 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute category as CATEGORY
2017-06-09 06:15:09,172 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute version as VERSION
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute lastUpdateTime as LASTUPDATETIME
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute active as ACTIVE
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute roleName as ROLENAME
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute roleType as ROLETYPE
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute roleState as ROLESTATE
2017-06-09 06:15:09,173 INFO main:com.cloudera.cmon.TimeSeriesAttribute: Registered TimeSeriesAttribute roleConfigGroup as ROLECONFIGGROUP

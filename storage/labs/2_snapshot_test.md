[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -mkdir precious
mkdir: `precious': File exists
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -put SEBC-master.zip precious
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls
Found 1 items
drwxr-xr-x   - ec2-user supergroup          0 2017-06-08 09:46 precious
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls precious
Found 1 items
-rw-r--r--   3 ec2-user supergroup     413823 2017-06-08 09:46 precious/SEBC-master.zip
[ec2-user@ip-172-31-29-176 ~]$
#

Always get error : 
"Failed to enable snapshots for HDFS directory" of service HDFS.

Found in Logs:
Can't open /run/cloudera-scm-agent/process/195-hdfs-enableSnapshot/supervisor.conf: Permission denied.

Searching for Error, do it manually:
[root@ip-172-31-29-176 dfs]# sudo -u hdfs hdfs dfsadmin -allowSnapshot /user/ec2-user/precious
allowSnapshot: Nested snapshottable directories not allowed: path=/user/ec2-user/precious, the ancestor / is already a snapshottable directory.

Deleted Snapshot on /, now I can create snapshot


[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -rm -r precious
rm: Failed to move to trash: hdfs://ip-172-31-29-176.eu-central-1.compute.internal:8020/user/ec2-user/precious: The directory /user/ec2-user/precious cannot be deleted since /user/ec2-user/precious is snapshottable and already has snapshots
[ec2-user@ip-172-31-29-176 ~]$


[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -rm -r precious/SEBC-master.zip
17/06/08 10:31:21 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-29-176.eu-central-1.compute.internal:8020/user/ec2-user/precious/SEBC-master.zip' to trash at: hdfs://ip-172-31-29-176.eu-central-1.compute.internal:8020/user/ec2-user/.Trash/Current/user/ec2-user/precious/SEBC-master.zip
[ec2-user@ip-172-31-29-176 ~]$

[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls precious/.snapshot
Found 1 items
drwxr-xr-x   - ec2-user supergroup          0 2017-06-08 10:26 precious/.snapshot/sebc-hdfs-test
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls precious/.snapshot/sebc-hdfs-test
Found 1 items
-rw-r--r--   3 ec2-user supergroup     413823 2017-06-08 09:46 precious/.snapshot/sebc-hdfs-test/SEBC-master.zip


ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -cp -p precious/.snapshot/sebc-hdfs-test/SEBC-master.zip precious
cp: User does not belong to supergroup


ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls precious/
Found 1 items
-rw-r--r--   3 ec2-user supergroup     413823 2017-06-08 09:46 precious/SEBC-master.zip

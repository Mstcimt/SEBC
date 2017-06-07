/user/cimttja
hadoop distcp hdfs://nn1:9820/foo/bar hdfs://nn2:9820/bar/foo


hadoop jar hadoop-examples.jar teragen 500000 mstcimt

ec2-user@ip-172-31-29-176 hadoop]$ ls
hadoop-examples.jar  hadoop-test-2.6.0-mr1-cdh5.8.3.jar  TestDFSIO_results.log


hadoop distcp hdfs://maws6:8020/user/ec2-user/mstcimt hdfs://maws6:8020/user/ec2-user/cimttja
17/06/07 15:06:40 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[hdfs://maws6:8020/user/ec2-user/mstcimt], targetPath=hdfs://maws6:8020/user/ec2-user/cimttja, targetPathExists=false, filtersFile='null'}
17/06/07 15:06:40 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-29-176.eu-central-1.compute.internal/172.31.29.176:8032
17/06/07 15:06:41 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 4; dirCnt = 1
17/06/07 15:06:41 INFO tools.SimpleCopyListing: Build file listing completed.
17/06/07 15:06:41 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/06/07 15:06:41 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/06/07 15:06:41 INFO tools.DistCp: Number of paths in the copy list: 4
17/06/07 15:06:41 INFO tools.DistCp: Number of paths in the copy list: 4
17/06/07 15:06:41 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-29-176.eu-central-1.compute.internal/172.31.29.176:8032
17/06/07 15:06:41 INFO mapreduce.JobSubmitter: number of splits:3
17/06/07 15:06:41 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1496839049138_0006
17/06/07 15:06:41 INFO impl.YarnClientImpl: Submitted application application_1496839049138_0006
17/06/07 15:06:42 INFO mapreduce.Job: The url to track the job: http://ip-172-31-29-176.eu-central-1.compute.internal:8088/proxy/application_1496839049138_0006/
17/06/07 15:06:42 INFO tools.DistCp: DistCp job-id: job_1496839049138_0006
17/06/07 15:06:42 INFO mapreduce.Job: Running job: job_1496839049138_0006
17/06/07 15:06:47 INFO mapreduce.Job: Job job_1496839049138_0006 running in uber mode : false
17/06/07 15:06:47 INFO mapreduce.Job:  map 0% reduce 0%
17/06/07 15:06:53 INFO mapreduce.Job:  map 100% reduce 0%
17/06/07 15:06:54 INFO mapreduce.Job: Job job_1496839049138_0006 completed successfully
17/06/07 15:06:54 INFO mapreduce.Job: Counters: 33
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=375054
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=50001600
                HDFS: Number of bytes written=50000000
                HDFS: Number of read operations=56
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=13
        Job Counters
                Launched map tasks=3
                Other local map tasks=3
                Total time spent by all maps in occupied slots (ms)=10975
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=10975
                Total vcore-seconds taken by all map tasks=10975
                Total megabyte-seconds taken by all map tasks=11238400
        Map-Reduce Framework
                Map input records=4
                Map output records=0
                Input split bytes=360
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=101
                CPU time spent (ms)=4620
                Physical memory (bytes) snapshot=543182848
                Virtual memory (bytes) snapshot=4745330688
                Total committed heap usage (bytes)=809500672
        File Input Format Counters
                Bytes Read=1240
        File Output Format Counters
                Bytes Written=0
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=50000000
                BYTESEXPECTED=50000000
                COPY=4
				
				
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -mkdir backup
[ec2-user@ip-172-31-29-176 ~]$ hdfs dfs -ls /user/ec2-user

Using BRD see picture BRD_Backup_test.PN



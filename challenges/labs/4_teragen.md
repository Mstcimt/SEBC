[theresa@ip-172-31-8-165 ~]$ time hadoop jar hadoop-examples.jar teragen -Ddfs.blocksize=32M 51200000 tgen512m
17/06/09 06:55:19 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-234.eu-central-1.compute.internal/172.31.8.234:8032
17/06/09 06:55:20 INFO terasort.TeraGen: Generating 51200000 using 2
17/06/09 06:55:20 INFO mapreduce.JobSubmitter: number of splits:2
17/06/09 06:55:20 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1497004882514_0001
17/06/09 06:55:20 INFO impl.YarnClientImpl: Submitted application application_1497004882514_0001
17/06/09 06:55:20 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-234.eu-central-1.compute.internal:8088/proxy/application_1497004882514_0001/
17/06/09 06:55:20 INFO mapreduce.Job: Running job: job_1497004882514_0001
17/06/09 06:55:27 INFO mapreduce.Job: Job job_1497004882514_0001 running in uber mode : false
17/06/09 06:55:27 INFO mapreduce.Job:  map 0% reduce 0%
17/06/09 06:55:46 INFO mapreduce.Job:  map 27% reduce 0%
17/06/09 06:55:52 INFO mapreduce.Job:  map 34% reduce 0%
17/06/09 06:55:58 INFO mapreduce.Job:  map 41% reduce 0%
17/06/09 06:56:04 INFO mapreduce.Job:  map 48% reduce 0%
17/06/09 06:56:11 INFO mapreduce.Job:  map 56% reduce 0%
17/06/09 06:56:17 INFO mapreduce.Job:  map 63% reduce 0%
17/06/09 06:56:23 INFO mapreduce.Job:  map 70% reduce 0%
17/06/09 06:56:29 INFO mapreduce.Job:  map 77% reduce 0%
17/06/09 06:56:35 INFO mapreduce.Job:  map 84% reduce 0%
17/06/09 06:56:41 INFO mapreduce.Job:  map 92% reduce 0%
17/06/09 06:56:47 INFO mapreduce.Job:  map 99% reduce 0%
17/06/09 06:56:48 INFO mapreduce.Job:  map 100% reduce 0%
17/06/09 06:56:48 INFO mapreduce.Job: Job job_1497004882514_0001 completed successfully
17/06/09 06:56:48 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=249968
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=170
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=8
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=2
                Other local map tasks=2
                Total time spent by all maps in occupied slots (ms)=154883
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=154883
                Total vcore-seconds taken by all map tasks=154883
                Total megabyte-seconds taken by all map tasks=158600192
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Input split bytes=170
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=469
                CPU time spent (ms)=79710
                Physical memory (bytes) snapshot=797417472
                Virtual memory (bytes) snapshot=5587472384
                Total committed heap usage (bytes)=652214272
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=109963291816450258
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=5120000000

real    1m31.178s
user    0m7.882s
sys     0m0.366s


[theresa@ip-172-31-8-165 ~]$ hdfs dfs -ls /user/theresa/tgen512m
Found 3 items
-rw-r--r--   3 theresa supergroup          0 2017-06-09 06:56 /user/theresa/tgen512m/_SUCCESS
-rw-r--r--   3 theresa supergroup 2560000000 2017-06-09 06:56 /user/theresa/tgen512m/part-m-00000
-rw-r--r--   3 theresa supergroup 2560000000 2017-06-09 06:56 /user/theresa/tgen512m/part-m-00001


Blocks see screenhosts blocks_file_1_part-m-00000 blocks_file_1_part-m-00001, both contains 76 block
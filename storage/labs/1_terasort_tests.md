useradd -m mstcimt




Last login: Wed Jun  7 15:33:07 BST 2017 on pts/1
-bash-4.2$ hdfs dfs -mkdir /user/mstcimt
-bash-4.2$ hdfs dfs -chown mstcimt /user/mstcimt
-bash-4.2$ hdfs dfs -ls /user
Found 7 items
drwxr-xr-x   - ec2-user supergroup          0 2017-06-07 15:27 /user/ec2-user
drwx------   - hdfs     supergroup          0 2017-06-07 15:29 /user/hdfs
drwxrwxrwx   - mapred   hadoop              0 2017-06-07 11:32 /user/history
drwxrwxr-t   - hive     hive                0 2017-06-07 11:33 /user/hive
drwxrwxr-x   - hue      hue                 0 2017-06-07 11:33 /user/hue
drwxr-xr-x   - mstcimt  supergroup          0 2017-06-07 16:11 /user/mstcimt
drwxrwxr-x   - oozie    oozie               0 2017-06-07 11:33 /user/oozie

hdfs dfs -expunge

time hadoop jar hadoop-examples.jar teragen -Dmapreduce.job.maps=4 -Ddfs.block.size=32M 10000000000 /user/mstcimt

[mstcimt@ip-172-31-29-176 ~]$ time hadoop jar hadoop-examples.jar teragen -Dmapreduce.job.maps=4 -Ddfs.blocksize=32M  100000000 teragen_test
17/06/07 18:07:37 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-29-176.eu-central-1.compute.internal/172.31.29.176:8032
17/06/07 18:07:38 INFO terasort.TeraSort: Generating 100000000 using 4
17/06/07 18:07:38 INFO mapreduce.JobSubmitter: number of splits:4
17/06/07 18:07:38 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1496839049138_0015
17/06/07 18:07:38 INFO impl.YarnClientImpl: Submitted application application_1496839049138_0015
17/06/07 18:07:38 INFO mapreduce.Job: The url to track the job: http://ip-172-31-29-176.eu-central-1.compute.internal:8088/proxy/application_1496839049138_0015/
17/06/07 18:07:38 INFO mapreduce.Job: Running job: job_1496839049138_0015
17/06/07 18:07:43 INFO mapreduce.Job: Job job_1496839049138_0015 running in uber mode : false
17/06/07 18:07:43 INFO mapreduce.Job:  map 0% reduce 0%
17/06/07 18:07:54 INFO mapreduce.Job:  map 13% reduce 0%
17/06/07 18:07:57 INFO mapreduce.Job:  map 18% reduce 0%
17/06/07 18:08:00 INFO mapreduce.Job:  map 21% reduce 0%
17/06/07 18:08:03 INFO mapreduce.Job:  map 22% reduce 0%
17/06/07 18:08:06 INFO mapreduce.Job:  map 23% reduce 0%
17/06/07 18:08:13 INFO mapreduce.Job:  map 30% reduce 0%
17/06/07 18:08:19 INFO mapreduce.Job:  map 31% reduce 0%
17/06/07 18:08:28 INFO mapreduce.Job:  map 36% reduce 0%
17/06/07 18:08:40 INFO mapreduce.Job:  map 37% reduce 0%
17/06/07 18:08:43 INFO mapreduce.Job:  map 42% reduce 0%
17/06/07 18:08:46 INFO mapreduce.Job:  map 47% reduce 0%
17/06/07 18:08:49 INFO mapreduce.Job:  map 51% reduce 0%
17/06/07 18:08:52 INFO mapreduce.Job:  map 53% reduce 0%
17/06/07 18:08:55 INFO mapreduce.Job:  map 54% reduce 0%
17/06/07 18:09:04 INFO mapreduce.Job:  map 55% reduce 0%
17/06/07 18:09:07 INFO mapreduce.Job:  map 57% reduce 0%
17/06/07 18:09:10 INFO mapreduce.Job:  map 64% reduce 0%
17/06/07 18:09:13 INFO mapreduce.Job:  map 68% reduce 0%
17/06/07 18:09:16 INFO mapreduce.Job:  map 69% reduce 0%
17/06/07 18:09:25 INFO mapreduce.Job:  map 71% reduce 0%
17/06/07 18:09:31 INFO mapreduce.Job:  map 73% reduce 0%
17/06/07 18:09:34 INFO mapreduce.Job:  map 74% reduce 0%
17/06/07 18:09:37 INFO mapreduce.Job:  map 75% reduce 0%
17/06/07 18:09:43 INFO mapreduce.Job:  map 78% reduce 0%
17/06/07 18:09:49 INFO mapreduce.Job:  map 88% reduce 0%
17/06/07 18:09:52 INFO mapreduce.Job:  map 89% reduce 0%
17/06/07 18:09:58 INFO mapreduce.Job:  map 90% reduce 0%
17/06/07 18:10:01 INFO mapreduce.Job:  map 91% reduce 0%
17/06/07 18:10:07 INFO mapreduce.Job:  map 94% reduce 0%
17/06/07 18:10:09 INFO mapreduce.Job:  map 96% reduce 0%
17/06/07 18:10:10 INFO mapreduce.Job:  map 98% reduce 0%
17/06/07 18:10:13 INFO mapreduce.Job:  map 99% reduce 0%
17/06/07 18:10:15 INFO mapreduce.Job:  map 100% reduce 0%
17/06/07 18:10:15 INFO mapreduce.Job: Job job_1496839049138_0015 completed successfully
17/06/07 18:10:16 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=488664
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=344
                HDFS: Number of bytes written=10000000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=586223
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=586223
                Total vcore-seconds taken by all map tasks=586223
                Total megabyte-seconds taken by all map tasks=600292352
        Map-Reduce Framework
                Map input records=100000000
                Map output records=100000000
                Input split bytes=344
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=1065
                CPU time spent (ms)=165120
                Physical memory (bytes) snapshot=649482240
                Virtual memory (bytes) snapshot=6306295808
                Total committed heap usage (bytes)=837287936
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=214760662691937609
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10000000000

real    2m40.800s
user    0m5.346s
sys     0m0.307s


[mstcimt@ip-172-31-29-176 ~]$ hdfs dfs -ls /user/mstcimt/teragen_test
Found 5 items
-rw-r--r--   3 mstcimt supergroup          0 2017-06-07 18:10 /user/mstcimt/teragen_test/_SUCCESS
-rw-r--r--   3 mstcimt supergroup 2500000000 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00000
-rw-r--r--   3 mstcimt supergroup 2500000000 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00001
-rw-r--r--   3 mstcimt supergroup 2500000000 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00002
-rw-r--r--   3 mstcimt supergroup 2500000000 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00003


[mstcimt@ip-172-31-29-176 ~]$ time hadoop jar hadoop-examples.jar terasort teragen_test terasort
17/06/07 18:18:12 INFO terasort.TeraSort: starting
17/06/07 18:18:14 INFO input.FileInputFormat: Total input paths to process : 4
Spent 265ms computing base-splits.
Spent 5ms computing TeraScheduler splits.
Computing input splits took 271ms
Sampling 10 splits of 300
Making 8 from 100000 sampled records
Computing parititions took 765ms
Spent 1037ms computing partitions.
17/06/07 18:18:14 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-29-176.eu-central-1.compute.internal/172.31.29.176:8032
17/06/07 18:18:15 INFO mapreduce.JobSubmitter: number of splits:300
17/06/07 18:18:15 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1496839049138_0016
17/06/07 18:18:15 INFO impl.YarnClientImpl: Submitted application application_1496839049138_0016
17/06/07 18:18:15 INFO mapreduce.Job: The url to track the job: http://ip-172-31-29-176.eu-central-1.compute.internal:8088/proxy/application_1496839049138_0016/
17/06/07 18:18:15 INFO mapreduce.Job: Running job: job_1496839049138_0016
17/06/07 18:18:22 INFO mapreduce.Job: Job job_1496839049138_0016 running in uber mode : false
17/06/07 18:18:22 INFO mapreduce.Job:  map 0% reduce 0%
17/06/07 18:18:33 INFO mapreduce.Job:  map 1% reduce 0%
17/06/07 18:18:35 INFO mapreduce.Job:  map 5% reduce 0%
17/06/07 18:18:42 INFO mapreduce.Job:  map 6% reduce 0%
17/06/07 18:18:48 INFO mapreduce.Job:  map 8% reduce 0%
17/06/07 18:18:49 INFO mapreduce.Job:  map 10% reduce 0%
17/06/07 18:18:52 INFO mapreduce.Job:  map 11% reduce 0%
17/06/07 18:19:01 INFO mapreduce.Job:  map 12% reduce 0%
17/06/07 18:19:02 INFO mapreduce.Job:  map 15% reduce 0%
17/06/07 18:19:03 INFO mapreduce.Job:  map 16% reduce 0%
17/06/07 18:19:11 INFO mapreduce.Job:  map 17% reduce 0%
17/06/07 18:19:12 INFO mapreduce.Job:  map 18% reduce 0%
17/06/07 18:19:14 INFO mapreduce.Job:  map 19% reduce 0%
17/06/07 18:19:15 INFO mapreduce.Job:  map 20% reduce 0%
17/06/07 18:19:16 INFO mapreduce.Job:  map 21% reduce 0%
17/06/07 18:19:20 INFO mapreduce.Job:  map 22% reduce 0%
17/06/07 18:19:23 INFO mapreduce.Job:  map 23% reduce 0%
17/06/07 18:19:26 INFO mapreduce.Job:  map 24% reduce 0%
17/06/07 18:19:28 INFO mapreduce.Job:  map 26% reduce 0%
17/06/07 18:19:29 INFO mapreduce.Job:  map 27% reduce 0%
17/06/07 18:19:34 INFO mapreduce.Job:  map 28% reduce 0%
17/06/07 18:19:38 INFO mapreduce.Job:  map 30% reduce 0%
17/06/07 18:19:40 INFO mapreduce.Job:  map 31% reduce 0%
17/06/07 18:19:42 INFO mapreduce.Job:  map 32% reduce 0%
17/06/07 18:19:46 INFO mapreduce.Job:  map 33% reduce 0%
17/06/07 18:19:48 INFO mapreduce.Job:  map 34% reduce 0%
17/06/07 18:19:51 INFO mapreduce.Job:  map 35% reduce 0%
17/06/07 18:19:54 INFO mapreduce.Job:  map 36% reduce 0%
17/06/07 18:19:55 INFO mapreduce.Job:  map 37% reduce 0%
17/06/07 18:19:56 INFO mapreduce.Job:  map 38% reduce 0%
17/06/07 18:19:58 INFO mapreduce.Job:  map 39% reduce 0%
17/06/07 18:20:03 INFO mapreduce.Job:  map 40% reduce 0%
17/06/07 18:20:05 INFO mapreduce.Job:  map 41% reduce 0%
17/06/07 18:20:06 INFO mapreduce.Job:  map 42% reduce 0%
17/06/07 18:20:08 INFO mapreduce.Job:  map 43% reduce 0%
17/06/07 18:20:09 INFO mapreduce.Job:  map 44% reduce 0%
17/06/07 18:20:14 INFO mapreduce.Job:  map 45% reduce 0%
17/06/07 18:20:15 INFO mapreduce.Job:  map 46% reduce 0%
17/06/07 18:20:18 INFO mapreduce.Job:  map 47% reduce 0%
17/06/07 18:20:21 INFO mapreduce.Job:  map 49% reduce 0%
17/06/07 18:20:24 INFO mapreduce.Job:  map 50% reduce 0%
17/06/07 18:20:28 INFO mapreduce.Job:  map 51% reduce 0%
17/06/07 18:20:31 INFO mapreduce.Job:  map 52% reduce 0%
17/06/07 18:20:32 INFO mapreduce.Job:  map 53% reduce 0%
17/06/07 18:20:35 INFO mapreduce.Job:  map 55% reduce 0%
17/06/07 18:20:39 INFO mapreduce.Job:  map 56% reduce 0%
17/06/07 18:20:41 INFO mapreduce.Job:  map 57% reduce 0%
17/06/07 18:20:43 INFO mapreduce.Job:  map 58% reduce 0%
17/06/07 18:20:47 INFO mapreduce.Job:  map 59% reduce 0%
17/06/07 18:20:48 INFO mapreduce.Job:  map 60% reduce 0%
17/06/07 18:20:51 INFO mapreduce.Job:  map 62% reduce 0%
17/06/07 18:20:54 INFO mapreduce.Job:  map 63% reduce 0%
17/06/07 18:20:59 INFO mapreduce.Job:  map 64% reduce 0%
17/06/07 18:21:00 INFO mapreduce.Job:  map 65% reduce 0%
17/06/07 18:21:01 INFO mapreduce.Job:  map 66% reduce 0%
17/06/07 18:21:03 INFO mapreduce.Job:  map 67% reduce 0%
17/06/07 18:21:06 INFO mapreduce.Job:  map 68% reduce 0%
17/06/07 18:21:07 INFO mapreduce.Job:  map 69% reduce 0%
17/06/07 18:21:14 INFO mapreduce.Job:  map 70% reduce 0%
17/06/07 18:21:15 INFO mapreduce.Job:  map 71% reduce 0%
17/06/07 18:21:16 INFO mapreduce.Job:  map 72% reduce 0%
17/06/07 18:21:18 INFO mapreduce.Job:  map 73% reduce 0%
17/06/07 18:21:19 INFO mapreduce.Job:  map 74% reduce 0%
17/06/07 18:21:25 INFO mapreduce.Job:  map 75% reduce 0%
17/06/07 18:21:27 INFO mapreduce.Job:  map 76% reduce 0%
17/06/07 18:21:28 INFO mapreduce.Job:  map 77% reduce 0%
17/06/07 18:21:29 INFO mapreduce.Job:  map 79% reduce 0%
17/06/07 18:21:34 INFO mapreduce.Job:  map 80% reduce 0%
17/06/07 18:21:38 INFO mapreduce.Job:  map 81% reduce 0%
17/06/07 18:21:39 INFO mapreduce.Job:  map 82% reduce 0%
17/06/07 18:21:41 INFO mapreduce.Job:  map 84% reduce 0%
17/06/07 18:21:43 INFO mapreduce.Job:  map 85% reduce 0%
17/06/07 18:21:50 INFO mapreduce.Job:  map 85% reduce 2%
17/06/07 18:21:51 INFO mapreduce.Job:  map 85% reduce 3%
17/06/07 18:21:52 INFO mapreduce.Job:  map 85% reduce 5%
17/06/07 18:21:53 INFO mapreduce.Job:  map 86% reduce 11%
17/06/07 18:21:54 INFO mapreduce.Job:  map 86% reduce 13%
17/06/07 18:21:55 INFO mapreduce.Job:  map 87% reduce 13%
17/06/07 18:21:56 INFO mapreduce.Job:  map 88% reduce 14%
17/06/07 18:21:57 INFO mapreduce.Job:  map 88% reduce 16%
17/06/07 18:21:58 INFO mapreduce.Job:  map 88% reduce 17%
17/06/07 18:21:59 INFO mapreduce.Job:  map 88% reduce 18%
17/06/07 18:22:00 INFO mapreduce.Job:  map 88% reduce 21%
17/06/07 18:22:05 INFO mapreduce.Job:  map 89% reduce 23%
17/06/07 18:22:07 INFO mapreduce.Job:  map 89% reduce 26%
17/06/07 18:22:08 INFO mapreduce.Job:  map 90% reduce 26%
17/06/07 18:22:11 INFO mapreduce.Job:  map 91% reduce 26%
17/06/07 18:22:13 INFO mapreduce.Job:  map 91% reduce 27%
17/06/07 18:22:16 INFO mapreduce.Job:  map 92% reduce 27%
17/06/07 18:22:18 INFO mapreduce.Job:  map 93% reduce 27%
17/06/07 18:22:19 INFO mapreduce.Job:  map 94% reduce 27%
17/06/07 18:22:25 INFO mapreduce.Job:  map 95% reduce 27%
17/06/07 18:22:27 INFO mapreduce.Job:  map 96% reduce 28%
17/06/07 18:22:32 INFO mapreduce.Job:  map 97% reduce 28%
17/06/07 18:22:34 INFO mapreduce.Job:  map 98% reduce 28%
17/06/07 18:22:36 INFO mapreduce.Job:  map 99% reduce 28%
17/06/07 18:22:37 INFO mapreduce.Job:  map 99% reduce 29%
17/06/07 18:22:39 INFO mapreduce.Job:  map 100% reduce 29%
17/06/07 18:22:40 INFO mapreduce.Job:  map 100% reduce 31%
17/06/07 18:22:41 INFO mapreduce.Job:  map 100% reduce 38%
17/06/07 18:22:42 INFO mapreduce.Job:  map 100% reduce 42%
17/06/07 18:22:43 INFO mapreduce.Job:  map 100% reduce 53%
17/06/07 18:22:44 INFO mapreduce.Job:  map 100% reduce 58%
17/06/07 18:22:45 INFO mapreduce.Job:  map 100% reduce 63%
17/06/07 18:22:46 INFO mapreduce.Job:  map 100% reduce 64%
17/06/07 18:22:47 INFO mapreduce.Job:  map 100% reduce 65%
17/06/07 18:22:48 INFO mapreduce.Job:  map 100% reduce 67%
17/06/07 18:22:49 INFO mapreduce.Job:  map 100% reduce 68%
17/06/07 18:22:50 INFO mapreduce.Job:  map 100% reduce 69%
17/06/07 18:22:51 INFO mapreduce.Job:  map 100% reduce 71%
17/06/07 18:22:52 INFO mapreduce.Job:  map 100% reduce 73%
17/06/07 18:22:53 INFO mapreduce.Job:  map 100% reduce 74%
17/06/07 18:22:54 INFO mapreduce.Job:  map 100% reduce 78%
17/06/07 18:22:55 INFO mapreduce.Job:  map 100% reduce 79%
17/06/07 18:22:56 INFO mapreduce.Job:  map 100% reduce 81%
17/06/07 18:22:57 INFO mapreduce.Job:  map 100% reduce 83%
17/06/07 18:22:58 INFO mapreduce.Job:  map 100% reduce 84%
17/06/07 18:22:59 INFO mapreduce.Job:  map 100% reduce 85%
17/06/07 18:23:00 INFO mapreduce.Job:  map 100% reduce 86%
17/06/07 18:23:01 INFO mapreduce.Job:  map 100% reduce 87%
17/06/07 18:23:03 INFO mapreduce.Job:  map 100% reduce 89%
17/06/07 18:23:06 INFO mapreduce.Job:  map 100% reduce 91%
17/06/07 18:23:08 INFO mapreduce.Job:  map 100% reduce 92%
17/06/07 18:23:09 INFO mapreduce.Job:  map 100% reduce 93%
17/06/07 18:23:10 INFO mapreduce.Job:  map 100% reduce 94%
17/06/07 18:23:11 INFO mapreduce.Job:  map 100% reduce 95%
17/06/07 18:23:15 INFO mapreduce.Job:  map 100% reduce 96%
17/06/07 18:23:17 INFO mapreduce.Job:  map 100% reduce 97%
17/06/07 18:23:18 INFO mapreduce.Job:  map 100% reduce 98%
17/06/07 18:23:23 INFO mapreduce.Job:  map 100% reduce 99%
17/06/07 18:23:27 INFO mapreduce.Job:  map 100% reduce 100%
17/06/07 18:23:27 INFO mapreduce.Job: Job job_1496839049138_0016 completed successfully
17/06/07 18:23:28 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=4444720981
                FILE: Number of bytes written=8825683444
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10000048600
                HDFS: Number of bytes written=10000000000
                HDFS: Number of read operations=924
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Launched map tasks=300
                Launched reduce tasks=8
                Data-local map tasks=300
                Total time spent by all maps in occupied slots (ms)=3037188
                Total time spent by all reduces in occupied slots (ms)=683046
                Total time spent by all map tasks (ms)=3037188
                Total time spent by all reduce tasks (ms)=683046
                Total vcore-seconds taken by all map tasks=3037188
                Total vcore-seconds taken by all reduce tasks=683046
                Total megabyte-seconds taken by all map tasks=3110080512
                Total megabyte-seconds taken by all reduce tasks=699439104
        Map-Reduce Framework
                Map input records=100000000
                Map output records=100000000
                Map output bytes=10200000000
                Map output materialized bytes=4342872473
                Input split bytes=48600
                Combine input records=0
                Combine output records=0
                Reduce input groups=100000000
                Reduce shuffle bytes=4342872473
                Reduce input records=100000000
                Reduce output records=100000000
                Spilled Records=200000000
                Shuffled Maps =2400
                Failed Shuffles=0
                Merged Map outputs=2400
                GC time elapsed (ms)=46386
                CPU time spent (ms)=1588770
                Physical memory (bytes) snapshot=149461417984
                Virtual memory (bytes) snapshot=484824252416
                Total committed heap usage (bytes)=173444956160
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10000000000
        File Output Format Counters
                Bytes Written=10000000000
17/06/07 18:23:28 INFO terasort.TeraSort: done

real    5m16.373s
user    0m8.667s
sys     0m0.389s


-bash-4.2$ hdfs dfs -ls -h /user/mstcimt/terasort
Found 10 items
-rw-r--r--   1 mstcimt supergroup          0 2017-06-07 18:23 /user/mstcimt/terasort/_SUCCESS
-rw-r--r--  10 mstcimt supergroup         77 2017-06-07 18:18 /user/mstcimt/terasort/_partition.lst
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:23 /user/mstcimt/terasort/part-r-00000
-rw-r--r--   1 mstcimt supergroup      1.1 G 2017-06-07 18:22 /user/mstcimt/terasort/part-r-00001
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:23 /user/mstcimt/terasort/part-r-00002
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:23 /user/mstcimt/terasort/part-r-00003
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:23 /user/mstcimt/terasort/part-r-00004
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:22 /user/mstcimt/terasort/part-r-00005
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:22 /user/mstcimt/terasort/part-r-00006
-rw-r--r--   1 mstcimt supergroup      1.2 G 2017-06-07 18:23 /user/mstcimt/terasort/part-r-00007
-bash-4.2$ hdfs dfs -ls -h /user/mstcimt/teragen_test
Found 5 items
-rw-r--r--   3 mstcimt supergroup          0 2017-06-07 18:10 /user/mstcimt/teragen_test/_SUCCESS
-rw-r--r--   3 mstcimt supergroup      2.3 G 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00000
-rw-r--r--   3 mstcimt supergroup      2.3 G 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00001
-rw-r--r--   3 mstcimt supergroup      2.3 G 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00002
-rw-r--r--   3 mstcimt supergroup      2.3 G 2017-06-07 18:10 /user/mstcimt/teragen_test/part-m-00003

    Inspect the derived/default values. Adjust as necessary.

    For example, if memory for the OS is too high or low, adjust the cell formula.
    Explain any adjustments you make in resources/labs/0_YARNCalcs.md


Setting Memory to 3GB according to Cloudera Admin Course
And 1 GB and 1 vcore for each component like Impalad, HBase, Solr

See Cloudera_Administrator_Training_Slides.pdf, Page 495

Quote
----
Calculate the resources needed for other processes
– Reserve 3GB or 20% of total memory for the OS
– Reserve resources for any non-Hadoop applicaFons
– Reserve resources for other any Hadoop components
– HDFS caching (if configured), NodeManager, DataNode
– Impalad, HBase RegionServer, Solr, etc.
----
Quote off


-D mapreduce.job.maps	6
mapreduce.job.reduces	6


	What criteria affects workload factor? What does a value of 1, 2, or 4 signify?

Workload 1

-D mapreduce.job.maps	6
mapreduce.job.reduces	6

Workload 2 and 4

-D mapreduce.job.maps	12
mapreduce.job.reduces	12

#!/bin/sh
# Confirm the path values given below correspond to your installation

MR=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-0.20-mapreduce
HADOOP=/usr/bin
USER=/user/ec2-user

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 8    
do
   # Reducer containers
   for j in 1 
   do                 
      # Container memory
      for k in 512 1024 
      do                         
         # Set mapper JVM heap 
         MAP_MB=`echo "($k*0.8)/1" | bc` 

         # Set reducer JVM heap 
         RED_MB=`echo "($k*0.8)/1" | bc` 
		 
		 echo "mapreduce.job.maps=$i"
		 echo "mapreduce.job.reduces=$j"
		 echo "mapreduce.map.memory.mb=$k"
		 echo "mapreduce.map.java.opts.max.heap=$MAP_MB"

		 echo "mapreduce.reduce.java.opts.max.heap=$RED_MB"

        time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     51200000 $USER/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err                       

       time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
	             $USER/results/tg-10GB-${i}-${j}-${k}  \
                     $USER/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err                         

        $HADOOP/hadoop fs -rm -r -skipTrash $USER/results/tg-10GB-${i}-${j}-${k}                         
        $HADOOP/hadoop fs -rm -r -skipTrash $USER/results/ts-10GB-${i}-${j}-${k}                 
      done
   done
done

echo Testing loop ended on `date`

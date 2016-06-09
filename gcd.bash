#!/bin/bash
m=$1
n=$2
if [ $m -le 0 ] || [ $n -le 0 ];
then 
    echo "one or two value has minus value"
    exit 1 
else 
  echo -n $m $n
  while [ 1 ] ; 
   do
      c=`expr $m % $n`
       	if [ $c -eq 0 ]
       	  then 
	     echo " "$n
	     exit
         fi
           m=$n
           n=$c
   done
fi


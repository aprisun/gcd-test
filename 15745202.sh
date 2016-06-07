#!/bin/bash
m=$1 
n=$2
while [ 1 ] ; 
do
     c=`expr $m % $n`
	if [ $c -eq 0 ]
	 then
	    echo "最大公約数は" = $n
	    exit
        fi
        m=$n
        n=$c
done

exit 0

echo $?

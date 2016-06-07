#!/bin/bash

tmp=/tmp/$$

###### Error Process ######
ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}


### test 2 -- 0 value###
echo 0 50 0 > $tmp-ans
./gcd.bash 0 50 > $tmp-out || ERROR_EXIT "TEST2-1"
if [ -e $tmp-ans ]; then
   diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"
else
   echo "tmp-ans file is not found"
fi

echo OK
rm -f $tmp-*
exit 0




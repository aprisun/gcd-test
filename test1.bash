#!/bin/bash

tmp=/tmp/$$

###### Error Process ######
ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

### test 1 -- minus value###
echo -25 50 25 > $tmp-ans
./gcd.bash -25 50 > $tmp-out || ERROR_EXIT "TEST1-1"
if [ -e $tmp-ans ]; then
   diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"
else
   echo "tmp-ans file is not found"
fi

echo OK
rm -f $tmp-*
exit 0




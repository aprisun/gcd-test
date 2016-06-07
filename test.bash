#!/bin/bash

tmp=/tmp/$$

###### Error Process ######
ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

### test 1 -- normal value## 
echo 12 24 12 > $tmp-ans
./gcd.bash 12 24 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2" 

echo OK
rm -f $tmp-*
exit 0




#!/bin/bash

#########
# TEST1 #
#########
echo 25 50 25 > $tmp-ans
./gcd.bash 25 50 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0



#!/bin/bash

### test 1## 
echo 12 24 12 > /tmp/tmp-ans
./gcd.bash 12 24 > /tmp/tmp-out || echo "test finished"
ans=/tmp/tmp-ans
out=/tmp/tmp-out
diff $ans $out || exit 1 

echo OK
rm -f /tmp/tmp-*
exit 0

### test 2###
#echo -25 50 25 > /tmp/tmp-ans
#./gcd.bash -25 50 > /tmp/tmp-out || echo "test failed"
#ans=/tmp/tmp-ans
#out=/tmp/tmp-out
#if [ -e $ans ]; then
#   diff $ans $out 
#else
#   echo "tmp-ans file is not found"
#fi

#echo NG
#rm -f /tmp/tmp-*
#exit 1


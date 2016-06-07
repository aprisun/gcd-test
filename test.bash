#!/bin/bash

tmp=/tmp/$$

###### Error Process ######

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

ERROR_MINUS () {
   echo "Value has minus value. Please check your input value."
   rm -f $tmp-*
}

ERROR_ZERO () {
   echo "Value has 0 value. Please check your input value."
   rm -f $tmp-*
}

ERROR_NOFILE (){
   echo "No ans,out file. Please check your input value."
   rm -f $tmp-*
}

ERROR_OUT (){
   echo "No out file.Please check your input value."
   rm -f $tmp-*
}

#########


### test 1 -- Minus value###
echo -25 50 25 > $tmp-ans
./gcd.bash -25 50 > $tmp-out || ERROR_MINUS "TEST1-1"
if [ -e $tmp-out ]; then
   diff $tmp-ans $tmp-out || ERROR_NOFILE "TEST1-2" 
else
   echo "tmp-out file is not found."
fi

### test 2 -- Zero value###
echo 0 50 25 > $tmp-ans
./gcd.bash 0 50 > $tmp-out || ERROR_ZERO "TEST2-1"
if [ -e $tmp-out ]; then
   diff $tmp-ans $tmp-out || ERROR_NOFILE "TEST2-2"
else
   echo "tmp-out file is not found."
fi

### test 3 -- Normal value## 
echo 12 24 12 > $tmp-ans
./gcd.bash 12 24 > $tmp-out || ERROR_OUT "TEST3-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2" 

echo OK
rm -f $tmp-*
exit 0



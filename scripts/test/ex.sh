#!/usr/bin/env sh
function exerciseFilter() {
  num=$1
  str="$1"
  while [ $num -ge 1 ]
  do
    num=`expr $num - 1`
    if [ $num -ge 10 ]
    then
      str="$str|$num";
    else
      str="$str|0$num";
    fi
  done
  echo $str
}

filter=$(exerciseFilter $1)
npm run test --- EX00[$filter]:
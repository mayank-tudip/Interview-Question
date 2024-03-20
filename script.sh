#!/bin/bash

read fle

fun(){
if [-d "$1" ];
then
for list in  $(ls)
do
fun "$list"  `expr $2 + 1`
done
fi
printf '%s-%s\n' "$2" "$1"

}

i=2
#p=(find / -name ${fle})
#cd ${p}"/"${fle}

echo $PWD
cd "${fle}"
echo $PWD
for list in  $(ls)
do
fun "$list" "$i"
i=`expr $i + 1`
done

#!/bin/bash


Node() {
local d="$1"
local l="$2"



echo "$((l-1))-$(basename "$d")"


for i in "$d"/*; do

if [ -d "$i" ]; then

Node "$i" $((l+1))
elif [ -f "$i" ]; then

echo "$((l))-$(basename "$i")"
fi

done

}


if [ $# -ne 1 ]; then
echo "Usage: $0 <folder>"
exit 1
fi




folder="$1"


if [ ! -d "$folder" ]; then
echo "Folder is not present"
exit 1
fi


Node "$folder" 2

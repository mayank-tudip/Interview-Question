#!/bin/bash


fun() {
    	local directory="$1"
	printf '%s - %s\n' "$2" "$1"
    	local file
    
    	for file in *; 
    	do
        if [ -d "$file" ]; then
            fun "$file" `expr $2 + 1`
        else
	printf '%s-%s\n' "$2" "$file"
        fi
    done
}


if [ ! -d "$1" ]; then
    echo "$1 is not a directory"
    exit 1
fi

cd "$1"

i=1
fun "$1" "$i"

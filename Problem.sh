#!/bin/bash


list_dir_structure() {
local dir="$1"
local lel="$2"
local indent=""

#Add appropriate indentation based on the level

for ((i=0; i<lel; i++)); do
indent="$indent "
done

#Print current directory with level

echo "${indent}$((lel-1)):" "$(basename "$dir")"

#List files and directories in the current directory

for item in "$dir"/*; do
#Check if the item is a directory

if [ -d "$item" ]; then
#Recursively list directory structure with increased level

list_dir_structure "$item" $((lel+1))
elif [ -f "$item" ]; then
#Print file with appropriate indentation and level

echo "${indent}$((lel)):" "$(basename "$item")"
fi
done
}

#Check if a directory is provided as an argument

if [ $# -ne 1 ]; then
echo "Usage: $0 <directory>"
exit 1
fi

# direct="$1"

# p=(find / -name ${direct})
# cd ${p}"/"${drect}

# echo $PWD
# cd "${direct}"
# echo $PWD


#Check if the provided directory exists

if [ ! -d "$direct" ]; then
echo "Directory '$direct' does not exist."
exit 1
fi

#Call the function to list directory structure with level 1 for root directory

echo "1: $(basename "$direct")"
list_dir_structure "$directory" 2

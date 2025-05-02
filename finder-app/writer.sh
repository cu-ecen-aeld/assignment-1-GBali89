#!/bin/env bash

writefile="$1"
writestr="$2"

if [ "$#" -ne 2 ] 
then
	echo "You have to provide exactly 2 arguments"
	exit 1
fi

parentdir=$(dirname "$writefile")

mkdir -p "$parentdir"
if [ ! -d "$parentdir" ]
then
	echo "Error creating directory $parentdir"
	exit 1
fi

echo "$writestr" > "$writefile"
if [ ! $? -eq 0 ]
then
	echo "Error writing to file $writefile"
	exit 1
fi

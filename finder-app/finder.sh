#!/bin/env bash

filesdir="$1"
searchstr="$2"

if [ -z "$filesdir" ]
then exit 1
fi

if [ -t "$searchstr" ]
then exit 1
fi

if [ ! -d "$filesdir" ]
then 
	echo "Filesdir: $filesdir does not exist"
	exit 1
fi

numfiles=$(find $filesdir -type f | wc -l)
nummatch=$(grep -ro $searchstr $filesdir | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $nummatch"

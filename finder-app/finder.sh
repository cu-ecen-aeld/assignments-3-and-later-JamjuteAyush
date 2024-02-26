#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# != 2 ]
then
  echo "More arguements required"
  exit 1
fi

if [ ! -d $1 ]
then
  echo "Not a directory"
  exit 1
fi

cd $1
filecount=$(find . -type f | wc -l)
matchstr=$(grep -r "$2" * | wc -l)

echo "The number of files are $filecount and the number of matching lines are $matchstr"

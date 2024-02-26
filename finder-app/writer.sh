#!/bin/bash

writefile=$1
writestr=$2

if [ $# != 2 ]
then
  echo "More arguements required"
  exit 1
fi

echo $2 > $1

if [ ! -f $1 ]
then
	echo "File no present"
	exit 1
fi

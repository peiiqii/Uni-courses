#!/bin/bash

echo script name: $0
echo arguments: $1 - $2 - $3
echo number of arguments: $#

for argument in "$@"
do
	echo "$argument"
done

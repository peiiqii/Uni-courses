#!/bin/bash

# for loop
names='Linux Concepts and Applications'

for name in $names; do
	echo $name
	done


# An alternate form of the for command:
for (( i=1; i<=5; i++ )); do
  echo "Number $i"
done


# while loop
counter=1
while [ $counter -le 10 ]; do
  echo $counter
  ((counter++))
done


# until loop
counter=1
until [ $counter -gt 10 ]; do
  echo $counter
  ((counter++))
done


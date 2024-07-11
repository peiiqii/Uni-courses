#!/bin/bash

MyArray=("Element 1" "Element 2" 42 1337)

for element in "${MyArray[@]}"; do
	if [ ${#element} -ge 5 ]; then
		echo $element
	fi
done

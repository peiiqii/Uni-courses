#!/bin/bash

MyArray=("Element 1" "Element 2" 42 1337)

echo $MyArray[0]
echo $MyArray[1]
echo $MyArray[2]
echo $MyArray[3]

echo ${MyArray[0]}
echo ${MyArray[1]}
echo ${MyArray[2]}
echo ${MyArray[3]}

MyArray[3]="UpdatedContent"
MyArray[4]="AppendedContent"

echo ${MyArray[3]}
echo ${MyArray[4]}

echo ${#MyArray[@]}

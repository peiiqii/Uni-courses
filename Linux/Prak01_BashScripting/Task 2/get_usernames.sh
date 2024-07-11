#!/bin/bash

# list all .pub files in ./keydir
files=$(ls ./keydir/*.pub)  # array of filenames: ./keydir/username.pub

# get the username from the filenames
for file in $files; do
    username=$(basename $file .pub)
    echo $username
done

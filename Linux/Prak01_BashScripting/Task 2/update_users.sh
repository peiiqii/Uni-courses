#!/bin/bash

# list all .pub files in ./keydir
files=$(ls ./keydir/*.pub)  # array of filenames: ./keydir/username.pub

# get the username from the filenames
users=""
for file in $files; do
    username=$(basename $file .pub)
    users="$users $username"
done

sed -in-place "s/@demo_project_users = .*/@demo_project_users =$users/g" keydir/example.conf
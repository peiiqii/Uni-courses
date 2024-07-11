#!/bin/bash

numberOfArgs=0

if ((numberOfArgs < 1)); then
        echo "Not enough arguments provided, see --help for options"
fi


if [ "$#" -ne 1 ]; then
        echo "Illegal number of parameters"
fi

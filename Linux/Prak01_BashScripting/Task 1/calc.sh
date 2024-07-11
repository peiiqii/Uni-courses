#!/bin/bash

# Check the number of arguments
if [ $# -eq 0 ]; then
	echo "At least 1 argument is required! See --help for more information."
	exit 1
elif [ $# -gt 3 ]; then
	echo "Too many arguments! See --help for more information."
	exit 1
fi

# check first argument
if [ $1 = "--help" ]; then
    echo "Usage: ./calc.sh [operation] [operand1] [operand2]"
  	echo "Operations:"
  	echo "  add   - Addition"
  	echo "  sub   - Subtraction"
  	echo "  mult  - Multiplication"
  	echo "  div   - Division"
  	echo "  cross - Cross sum"
  	echo "  --help - Show this help message"
    exit 0
elif [ $1 != "add" ] && [ $1 != "sub" ] && [ $1 != "mul" ] && [ $1 != "div" ] && [ $1 != "cross" ]; then
    echo "Invalid operation! See --help for more information."
    exit 1
fi

# check second and third argument
if [ $# -eq 1 ]; then
    read -p "Enter first integer : " n1
    if [ $1 != "cross" ]; then
	    read -p "Enter second integer : " n2
	  fi
elif [ $# -ge 2 ]; then
    if ! [ "$2" -eq "$2" ]; then  # test if $2 is a valid integer
        echo "Invalid integer provided!"
        read -p "Enter first integer : " n1
    else
        n1=$2
    fi

    if [ $# -eq 2 ] && [ $1 != "cross" ]; then
        read -p "Enter second integer : " n2
    fi

    if [ $# -eq 3 ]; then
      if [ $1 != "cross" ]; then
        if ! [ "$3" -eq "$3" ]; then  # test if $3 is a number
          echo "Invalid integer provided!"
          read -p "Enter second integer : " n2
        else
          n2=$3
        fi
      else
        echo "Too many arguments! Cross sum only takes one argument! See --help for more information."
        exit 1
      fi
    fi
fi

# Perform calculations based on the operation
if [ $1 = "add" ]; then
    result=$(($n1 + $n2))
elif [ $1 = "sub" ]; then
    result=$(($n1 - $n2))
elif [ $1 = "mul" ]; then
    result=$(($n1 * $n2))
elif [ $1 = "div" ]; then
    if [ $n2 -eq 0 ]; then  # test division by zero
        echo "NaN"
        exit 0
    fi
    result=$(($n1 / $n2))
elif [ $1 = "cross" ]; then
    echo "length: ${#n1}"
    n1=${n1#-} # Remove leading negative sign if present
    result=0
    for (( j=0; j<${#n1}; j++ )); do  # for range(len(n1))
        result=$((result + ${n1:j:1}))  # substring: result += n1[j]
    done
fi

# Display the result
echo "Result: $result"
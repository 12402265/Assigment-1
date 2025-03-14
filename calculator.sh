#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 '<expression>'"
    exit 1
fi

# Replace ^ with ** for bc compatibility
expr=$(echo "$1" | sed 's/\^/**/g')

# Evaluate the expression using bc
result=$(echo "scale=20; $expr" | bc -l)

echo "$1 = $result"

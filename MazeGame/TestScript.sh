#!/bin/bash

# Testing no args
./SkeletonCode > tmp
if grep -q "Usage: ./SkeletonCode <name>";
then
    echo "PASS"
else
    echo "FAIL"
fi

# Testing 2 args
./SkeletonCode x x> tmp
if grep -q "Usage: ./SkeletonCode <name>";
then
    echo "PASS"
else
    echo "FAIL"
fi

# Testing 
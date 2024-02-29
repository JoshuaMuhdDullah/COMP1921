#!/bin/bash

# -- Testing Arguments --

# Testing no args
./SkeletonCode > tmp
if grep -q "Usage: ./SkeletonCode <name>";
then
    echo "PASS"
else
    echo "FAIL"
fi

# Testing inva args
./SkeletonCode x x > tmp
if grep -q "Usage: ./SkeletonCode <name>";
then
    echo "PASS"
else
    echo "FAIL"
fi

# -- Testing Files --

# entering a file that doesnt exist
./SkeletonCode doesntExist.txt > tmp
if grep -q "File Doesn't Exist";
then
    echo "PASS"
else
    echo "FAIL"

# -- Testing Movement --

# Testing forward lower case
./SkeletonCode 5x5maze.txt w > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing forward upper case 
./SkeletonCode 5x5maze.txt W > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing left lower case
./SkeletonCode 5x5maze.txt a > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing left upper case
./SkeletonCode 5x5maze.txt A > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing down lower case
./SkeletonCode 5x5maze.txt s > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing down upper case
./SkeletonCode 5x5maze.txt S > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing right lower case
./SkeletonCode 5x5maze.txt d > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"

# Testing right upper case
./SkeletonCode 5x5maze.txt D > tmp
if grep -q "player moved up\n"
then
    echo "PASS"
else
    echo "FAIL"








#!/bin/bash

# -- Testing Arguments --

# Tests if no arguments passed it will report an error
./SkeletonCode > tmp
if grep -q "Usage: ./SkeletonCode <name> <inputs>";
then
    echo "PASS"
else
    echo "FAIL"
fi

# -- Validating Files --

# Tests if file path doesnt exist it will report an error
./SkeletonCode DoesntExist.txt > tmp
if grep -q "File Doesn't Exist";
then
    echo "PASS"
else
    echo "FAIL"

# Tests if a maze contains invalid characters it will report an error
./SkeletonCode InvalidCharacter.txt > tmp
if grep -q "Maze contains invalid characters";
then
    echo "PASS"
else
    echo "FAIL"

# Tests for mazes that contains an invalid height it will report an error
./SkeletonCode InvalidHeight.txt > tmp
if grep -q "Maze is not rectangle";
then
    echo "PASS"
else
    echo "FAIL"

# Tests for mazes that contains an invalid width it will report an error
./SkeletonCode InvalidHeight.txt > tmp
if grep -q "Maze is not rectangle";
then
    echo "PASS"
else
    echo "FAIL"

# Tests for maze with dimensions that are too large it will report an error
./SkeletonCode 105x5maze.txt > tmp
if grep -q "Height and width out of range";
then
    echo "PASS"
else
    echo "FAIL"

# Tests if code accepts mazes with holes in the out wall, maze is valid
./SkeletonCode HolesInWall.txt
if grep -q "Valid maze"
then
    echo "PASS"
else
    echo "FAIL"

# -- Testing keyboard inputs --

# Testing forward lower case
./SkeletonCode 5x5maze.txt w > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing forward upper case 
./SkeletonCode 5x5maze.txt W > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing left lower case
./SkeletonCode 5x5maze.txt a > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing left upper case
./SkeletonCode 5x5maze.txt A > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing down lower case
./SkeletonCode 5x5maze.txt s > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing down upper case
./SkeletonCode 5x5maze.txt S > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing right lower case
./SkeletonCode 5x5maze.txt d > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing right upper case
./SkeletonCode 5x5maze.txt D > tmp
if grep -q "player moved up"
then
    echo "PASS"
else
    echo "FAIL"

# Testing display maze
./SkeletonCode 5x5maze.txt m > tmp
if grep -q "map of maze" 
then
    echo "PASS"
else
    echo "FAIL"

# Tesing invalid input
./SkeletonCode 5x5maze.txt a r > tmp
if grep -q "Invalid input" 
then
    echo "PASS"
else
    echo "FAIL"

# -- testing maze bounds -- 

# testing moving out of bounds
./SkeletonCode 10x6maze.txt d d d d d d d d d > tmp
if grep -q "you cannot move there"
then
    echo "PASS"
else
    echo "FAIL"

# Testing moving into a wall
./SkeletonCode 5x5maze.txt w w > tmp
if grep -q "you cannot move there"
then
    echo "PASS"
else
    echo "FAIL"

# testing moving back after trying to go out of bounds as it code might incorrectly calculate current pos
./SkeletonCode 10x6maze.txt d d d d d d d d d a > tmp
if grep -q "player moved left"
then
    echo "PASS"
else
    echo "FAIL"

# testing moving back after trying move into a wall as it code might incorrectly calculate current pos
./SkeletonCode 5x5maze.txt w w s > tmp
if grep -q "player moved down"
then
    echo "PASS"
else
    echo "FAIL"

# -- testing win condition --

# testing valid wins
./SkeletonCode 5x5maze.txt 5x5navigation.txt > tmp
if grep -q "you have won!" 
then
    echo "PASS"
else
    echo "FAIL"

./SkeletonCode 10x10maze.txt 10x10navigation.txt > tmp
if grep -q "you have won!"
then
    echo "PASS"
else
    echo "FAIL"








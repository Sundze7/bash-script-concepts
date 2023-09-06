#!/bin/bash

name=$1

# Check if no argument is provided
if [[ -z "$name" ]]; then
    echo "Error: No file or directory name provided."
    exit 1
fi

# Find the file or directory in subdirectories of home
result=$(find "$HOME" -name "$name" -print -quit)

if [[ -n "$result" ]]; then
    echo "File or directory '$name' exists."

    # Check if it's a regular file
    if [[ -f "$result" ]]; then
        echo "$name is a regular file."
        ls -l "$result"
        exit 0
    fi

    # Check if it's a directory
    if [[ -d "$result" ]]; then
        echo "$name is a directory."
        ls -l "$result"
        exit 1
    fi

    # If it's any other type of file
    echo "$name is not a regular file or directory."
    ls -l "$result"
    exit 2
else
    echo "File or directory '$name' does not exist."
    exit 2
fi
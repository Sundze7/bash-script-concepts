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
    fi

    # Check if it's a directory
    if [[ -d "$result" ]]; then
        echo "$name is a directory."
    fi

    # Perform ls command with long listing option
    ls -l "$result"
else
    echo "File or directory '$name' does not exist."
fi
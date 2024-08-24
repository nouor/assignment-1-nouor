#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required: <file_path> <write_string>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Create or overwrite the file with the provided content
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi
#!/bin/bash

# Set the output file
output_file="app_contents.txt"

# Clear the output file if it exists
> "$output_file"

# Function to process each file
process_file() {
    local file="$1"
    echo "File: $file" >> "$output_file"
    echo "----------------------------------------" >> "$output_file"
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"
    echo "----------------------------------------" >> "$output_file"
    echo "" >> "$output_file"
}

# Recursively find all files in the app directory
find ./app -type f | while read -r file; do
    process_file "$file"
done

echo "Content of all files in the app folder has been written to $output_file"
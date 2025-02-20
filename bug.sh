#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # The error is here: the loop variable '$file' is treated as a single string, even though it contains spaces.
  # If a filename has spaces, this will cause issues as the commands will treat the spaces as delimiters.
  echo "Processing: $file"
  #Example command that may fail if file has spaces.
  grep "pattern" "$file" > "processed_$file"
  #If file name has spaces the file 'processed_file name.txt' will not be created as intended, resulting in unintended behavior
done
#!/bin/bash

# This script correctly processes a list of files, even those with spaces in their names.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt" "/tmp/file name.txt")

for file in "${files[@]}"; do
  # The solution is here: using "${file}" ensures that filenames with spaces are treated as single units.
  echo "Processing: ${file}"
  #Example command that handles file names with spaces
  grep "pattern" "${file}" > "processed_${file// /_}"
  #The file name with spaces is handled by replacing space with underscore before creating file. Alternative solution is to quote correctly.
done
# Shell Script: Filename with Spaces Handling Error

This repository demonstrates a common error in shell scripting when handling filenames that contain spaces.  The script attempts to iterate over a list of files and process each one. However, it fails when filenames include spaces because the loop variable isn't properly quoted.

## Bug Description
The `for` loop doesn't correctly handle filenames containing spaces. The loop variable expands incorrectly when spaces are present, causing commands to fail or produce unexpected results. 

## Bug Solution
The solution involves using an array and properly quoting the array elements within the loop to preserve filenames with spaces.
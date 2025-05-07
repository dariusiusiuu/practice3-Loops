#!/bin/bash

until [ -d "$dir" ]; do
    read -p "Enter a directory path: " dir
    [ -d "$dir" ] || echo "That is not a valid directory. Try again."
done

echo ""
echo "Permissions for $dir:"
ls -ld "$dir" | awk '{print $1}'

echo ""
echo "Number of files and subdirectories:"
find "$dir" -mindepth 1 -maxdepth 1 | wc -l

echo ""
echo "Contents of $dir:"
ls -A "$dir"

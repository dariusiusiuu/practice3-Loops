#!/bin/bash

read -p "Enter the file: " file

if [[ ! -f $file ]]; then
    echo "The file doesn't exist."
else
    echo "" >> tempfile.txt
    IFS=$'\n'
    for line in $(cat "$file"); do
        if [[ ${line:0:1} != "#" ]]; then
            echo $line >> tempfile.txt
        fi
    done

    mv tempfile.txt "$file"

    read -p "Enter a word or phrase to search: " search

    if grep -q $search "$file"; then
        echo "The word or phrase was found"
    else
        echo "The word or phrase was not found"
    fi

    read -p "Enter a phrase to add to the end of the file: " add
    echo $add >> "$file"
fi

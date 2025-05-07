#!/bin/bash

read -p "Please enter the file to save the words: " file

if [[ ! -f $file ]]; then
    echo "File doesn't exist."
else
    echo "Start typing words. To stop, type ':>': "
    read word
    while [[ $word != ":>" ]]; do
        echo "$word" >> "$file"
        read word
    done
fi

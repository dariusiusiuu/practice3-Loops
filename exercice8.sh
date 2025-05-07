#!/bin/bash

while true; do
    read -s -p "Enter your password: " password
    echo

    if [[ ${#password} -ge 8 && "$password" =~ [A-Z] && "$password" =~ [0-9] ]]; then
        echo "Password accepted."
        break
    else
        echo "Error: Password must be at least 8 characters long, contain at least one uppercase letter, and at least one digit."
    fi
done

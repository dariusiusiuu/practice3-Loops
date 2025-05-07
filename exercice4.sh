#!/bin/bash

users_with_uppercase=""

while IFS=: read -r username _; do
    if [[ "$username" =~ [A-Z] ]]; then
        users_with_uppercase+="- ""$username"$'\n'
    fi
done < /etc/passwd

echo "Users with uppercase letters:"
echo "$users_with_uppercase"

while true; do
    read -p "Enter the username: " username
    echo ""

    if grep -q "$username:" /etc/passwd; then
	echo "User information for $username:"
        grep "$username:" /etc/passwd
        break
    else
        echo "Error: The user '$username' does not exist."
        break
    fi
done

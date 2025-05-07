#!/bin/bash

while true; do
    echo "Please choose an option:"
    echo "1) Show current date and time"
    echo "2) Check if a file exists"
    echo "3) Exit"
    read -p "Enter your choice [1-3]: " choice

    case "$choice" in
        1)
            date
            ;;
        2)
            read -p "Enter the file path: " filepath
            if [ -e "$filepath" ]; then
                echo "The file exists."
            else
                echo "The file does not exist."
            fi
            ;;
        3)
            echo "Goodbye."
            break
            ;;
        *)
            echo "Invalid option. Please enter 1, 2, or 3."
            ;;
    esac

    echo ""
done

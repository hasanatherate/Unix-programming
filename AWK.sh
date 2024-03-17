#!/bin/bash

while true
do
    echo "Enter your choice:"
    echo "a. AWK expression"
    echo "b. SED expression"
    echo "c. Exit"
    read choice

    case $choice in
        a)
            echo "Enter a number to find its square:"
            read num
            awk -v num="$num" 'BEGIN { print "Square of", num, "is", num*num }'
            ;;
        b)
            echo "Enter text to delete word 'today' and append current date:"
            read text
            echo "$text" | sed -n -e 's/.*//p' -e "s/(.*)/$(date +%Y-%m-%d)/"
            ;;
        c)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac

    echo "Do you want to continue? (y/n)"
    read cont

    if [ "$cont" != "y" ]; then
        echo "Exiting program."
        exit 0
    fi
done

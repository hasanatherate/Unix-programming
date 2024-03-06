#!/bin/bash

clear
echo "Enter text file contents:"
read txt
echo "$txt" > example.txt

ch1="y"

while [ "$ch1" = 'y' ]
do
    echo "a. Replace"
    echo "b. Delete"
    echo "c. Exit"
    echo "Enter choice:"
    read ch

    case $ch in
        a)
            echo "Enter the word you want to replace:"
            read old_word
            echo "Enter the replacement word:"
            read new_word
            cat example.txt | tr "$old_word" "$new_word" > temp_file
            mv temp_file example.txt
            ;;
        b)
            echo "Enter the word you want to delete:"
            read del_word
            cat example.txt | tr -d "$del_word" > temp_file
            mv temp_file example.txt
            ;;
        c)
            exit
            ;;
        *)
            echo "Wrong choice"
            ;;
    esac

    echo "Do you want to continue? Press y/n"
    read ch1

    if [ "$ch1" != "y" ]
    then
        exit
    fi
done

#!/bin/bash

ch1="y"

while [ "$ch1" = "y" ]
do
    echo -e "Menu\n"
    echo -e "1. List of files"
    echo -e "2. Current Directory"
    echo -e "3. Process Status"
    echo -e "4. Logged-in Users"
    echo -e "5. Reset working directory"
    echo -e "6. Disk space available"
    echo -e "7. System Details"
    echo -e "8. Usage of tail command"
    
    read ch
    
    case $ch in
        1) ls -l;;
        2) pwd;;
        3) ps;;
        4) who;;
        5) cd ~;;
        6) df -h;;
        7) uname -a;;
        8)
            echo "Enter the number of lines to read:"
            read n
            echo "Enter the file name:"
            read file
            tail -$n $file;;
        *) echo "Invalid choice";;
    esac
    
    echo -e "Do you want to continue? (y/n)"
    read ch1
done

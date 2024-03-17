#!/bin/bash

# Function to display options
display_options() {
    echo "a. Append text"
    echo "b. Display file content"
    echo "c. Copy file"
    echo "d. Rename file"
    echo "e. Delete file"
    echo "f. Exit"
}

# Prompt the user to enter text file content
echo "Enter text file content"
read txt

# Create or overwrite example.txt with the entered content
cat > example.txt <<EOF
$txt
EOF

# Initialize loop control variable
ch="y"

# Loop until the user chooses to exit
while [ $ch = 'y' ]
do
    # Display options to the user
    display_options

    # Prompt the user for their choice
    echo "Enter your choice"
    read ch

    # Process user's choice
    case $ch in
        a)
            # Append text to example.txt
            echo "Enter text to append"
            read append_text
            echo "$append_text" >> example.txt
            ;;
        b)
            # Display file content
            echo "File content:"
            cat example.txt
            ;;
        c)
            # Copy file
            echo "Enter the name of the new file to copy to"
            read new_file
            cp example.txt "$new_file"
            echo "File copied to $new_file"
            ;;
        d)
            # Rename file
            echo "Enter the new name for the file"
            read new_name
            mv example.txt "$new_name"
            echo "File renamed to $new_name"
            ;;
        e)
            # Delete the file example.txt
            rm example.txt
            echo "File deleted"
            ;;
        f)
            # Exit the script
            exit
            ;;
        *)
            # Display message for invalid choice
            echo "Invalid choice"
            ;;
    esac

    # Prompt to continue
    echo "Do you want to continue? (y/n)"
    read ch
done

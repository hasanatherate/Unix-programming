#!/bin/bash

while [[ -z $user ]]
do
    echo "Enter the username: "
    read user
done

echo
echo "Validating the $user ..."

if grep -q "$user" /etc/passwd
then
    echo
    echo "$user IS A VALID USER."
    echo "Checking whether $user is logged in or not ..."
    echo
else
    echo
    echo "ERROR: PLEASE ENTER A VALID USERNAME."
    echo "Exiting ..."
    exit 1
fi

if who | grep -q "$user"
then
    echo
    echo "$user IS LOGGED INTO THE SERVER !!!"
    echo
else
    echo
    echo "$user IS NOT LOGGED INTO THE SERVER !!!"
    echo
fi

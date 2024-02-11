while [[ -z $user ]]
do
echo "Enter the user name : "
read user
done

echo
echo "Validating the $user ..."
if [[ grep -c $user /etc/passwd -eq 0 ]]
then
   echo
   echo "ERROR : PLEASE ENTER A VALID USERNAME."
   echo "Exiting ..."
   exit 1
else
   echo
   echo "$user IS A VALID USER."
   echo "Checking whether the $user is logged on or not ..."
   echo
fi

if [[ who | grep -c $user -eq 0 ]]
then
   echo
   echo "$user IS NOT LOGGED INTO THE SERVER !!!"
   echo
   exit 0
else
   echo
   echo "$user IS LOGGED INTO THE SERVER !!!"
   echo
fi
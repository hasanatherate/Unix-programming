clear
echo "Enter text file contents"
read txt
cat > example.txt <<EOF
$txt
EOF
ch1="y"
 while [ $ch1 = 'y' ]
 do
 echo a. Replace
 echo b. Delete
 echo c. Exit
 echo Enter choice
 read ch
 case $ch in
 a) echo Enter which word you want to remove
 read num1
 echo Enter Replace word
 read num
 cat example.txt | tr $num1 $num 
 ;;
 b) echo enter delete word
 read num
 cat example.txt | tr -d $num ;;
 c) exit ;;
 *) echo wrong choice ;;
 esac
 echo Do you want to continue press y/n
 read $ch1
 
if [ $ch1 != "y" ]
then
exit
fi
done
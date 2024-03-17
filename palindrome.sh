echo "Enter a string"
read input
clear
date
len=${#input}
for((i=len-1; i>=0; i--))
do
    reverse="$reverse${input:$i:1}"
done
if [ "$input" == "$reverse" ]; then
    echo "The input string is a palindrome"
else
    echo "The input string is not a palindrome"
fi
vowel_count=$(echo $input | grep -o -i "[aeiou]" | wc -l)
echo "The given string has $vowel_count vowels"

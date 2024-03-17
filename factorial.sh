factorial() {
    local n=$1
    if (( n <= 2 )); then
        echo $n
    else
        echo $(( n * $(factorial $((n-1))) ))
    fi
}

echo "Enter a number:"
read n
echo "Factorial of $n is: $(factorial $n)"

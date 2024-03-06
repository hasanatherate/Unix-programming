clear
echo "Simple calculator"
sum=0
i="y"

echo "Enter first number:"
read n1

echo "Enter second number:"
read n2

while [ $i = "y" ]
do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "Enter your choice"
    read ch

    case $ch in
        1)
            sum=$(expr $n1 + $n2)
            echo "Sum = $sum"
            ;;
        2)
            sub=$(expr $n1 - $n2)
            echo "Subtraction = $sub"
            ;;
        3)
            mul=$(expr $n1 \* $n2)
            echo "Multiplication = $mul"
            ;;
        4)
            if [ $n2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                div=$(expr $n1 / $n2)
                echo "Division = $div"
            fi
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac

    echo "Do you want to continue? (y/n)"
    read i

    if [ $i != "y" ]; then
        exit
    fi
done

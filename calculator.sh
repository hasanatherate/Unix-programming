clear
ch1="y"

while [ "$ch1" = 'y' ]
do
    echo "a. Prime or not"
    echo "b. Odd or even"
    echo "c. Exit"
    echo "Enter choice"
    read ch

    case $ch in
        a)
            echo "Enter number"
            read num
            i=2
            while [ $i -lt $num ]
            do
                k=$(expr $num % $i)
                if [ $k -eq 0 ]
                then
                    echo "Number is not prime"
                    break
                fi
                i=$(expr $i + 1)
            done
            if [ $i -eq $num ]
            then
                echo "Number is prime"
            fi
            ;;
        b)
            echo "Enter number"
            read num
            y=$(expr $num % 2)
            if [ $y -eq 0 ]
            then
                echo "Number is even"
            else
                echo "Number is odd"
            fi
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

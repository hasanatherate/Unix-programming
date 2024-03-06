clear
ch1="y"

while [ "$ch1" = 'y' ]
do
    echo "Conversion of decimal to Binary and Binary to Decimal"
    echo "1. Convert Decimal to Binary"
    echo "2. Convert Binary to Decimal"
    echo "3. Exit"
    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            echo "Enter any decimal number:"
            read num
            rem=1
            bno=" "
            while [ $num -gt 0 ]
            do
                rem=$(expr $num % 2)
                bno=$bno$rem
                num=$(expr $num / 2)
            done
            i=${#bno}
            final=" "
            while [ $i -gt 0 ]
            do
                rev=$(echo $bno | awk '{ printf substr( $0,'$i',1 ) }')
                final=$final$rev
                i=$(( $i - 1 ))
            done
            echo "Equivalent Binary number:" $final
            ;;
        2)
            echo "Enter any Binary number:"
            read bino
            len=${#bino}
            i=1
            pow=$((len - 1))
            findec=0
            while [ $i -le $len ]
            do
                n=$(echo $bino | awk '{ printf substr( $0,'$i',1 )}')
                j=1
                p=1
                while [ $j -le $pow ]
                do
                    p=$(( p * 2 ))
                    j=$(( j + 1 ))
                done
                dec=$(( n * p ))
                findec=$(( findec + dec ))
                pow=$((pow - 1))
                i=$(( i + 1 ))
            done
            echo "Equivalent Decimal number:" $findec
            ;;
        3)
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

iter=1
echo "Enter source file name:"
read fn

echo "Enter destination directory:"
read nn
mkdir -p "$nn"  # Create the destination directory if it doesn't exist

while [ $iter -le 1 ]
do
    cp "$fn" "$nn/"
    iter=$((iter + 1))
done

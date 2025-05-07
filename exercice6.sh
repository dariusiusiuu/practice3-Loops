#!/bin/bash

count=0
numbers=()

until [ "$count" -eq 3 ]; do
    read -p "Enter an integer: " input
    if [[ "$input" =~ [0-9] ]]; then
        numbers+=("$input")
        ((count++))
    else
        echo "Invalid input. Please enter an integer."
    fi
done

sum=$((numbers[0] + numbers[1] + numbers[2]))
product=$((numbers[0] * numbers[1] * numbers[2]))

max=${numbers[0]}
min=${numbers[0]}

for n in "${numbers[@]}"; do
    (( n > max )) && max=$n
    (( n < min )) && min=$n
done

echo ""
echo ""
echo "Sum: $sum"
echo "Product: $product"
echo "Max: $max"
echo "Min: $min"

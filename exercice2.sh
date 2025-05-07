#!/bin/bash

positives=0
negatives=0
zeros=0

for num in "$@"; do
    if [[ $num =~ [0-9] ]]; then
        if [[ $num -gt 0 ]]; then
            positives=$((positives + 1))
        elif [[ $num -lt 0 ]]; then
            negatives=$((negatives + 1)) 
        else
            zeros=$((zeros+1))
        fi

    else
        echo "'$num' not is a number valid."
    fi
done

echo ""

echo "Positives: $positives"
echo "Negatives: $negatives"
echo "Equal to zero: $zeros"

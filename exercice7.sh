#!/bin/bash

options=("rock" "paper" "scissors")

while true; do
    user_choice=""

    until [[ "$user_choice" =~ ^(rock|paper|scissors)$ ]]; do
        read -p "Enter your choice (rock, paper, or scissors): " user_choice
    done

    computer_choice=${options[$((RANDOM % 3))]}
    echo "Computer chose: $computer_choice"

    if [ "$user_choice" = "$computer_choice" ]; then
        echo "It's a tie."
    elif [[ ( "$user_choice" = "rock" && "$computer_choice" = "scissors" ) ||
            ( "$user_choice" = "paper" && "$computer_choice" = "rock" ) ||
            ( "$user_choice" = "scissors" && "$computer_choice" = "paper" ) ]]; then
        echo "You win!"
    else
        echo "You lose."
    fi

    play_again=""
    until [[ "$play_again" =~ ^(y|n)$ ]]; do
        read -p "Do you want to play again? (y/n): " play_again
    done

    if [ "$play_again" = "n" ]; then
        echo "Thanks for playing."
        break
    fi
done

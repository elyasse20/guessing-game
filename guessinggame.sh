#!/bin/bash


ask_for_guess() {
    echo "Guess the number of files in the current directory:"
    read guess
}

file_count=$(ls -1 | wc -l)

while true; do
    ask_for_guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if (( guess < file_count )); then
        echo "Too low! Try again."
    elif (( guess > file_count )); then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files!"
        break
    fi
done

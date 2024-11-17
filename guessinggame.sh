#!/bin/bash

# Function to count the files in the directory
count_files() {
    echo $(ls -1 | wc -l)
}

# Get the correct number of files
correct_count=$(count_files)

# Start the game
echo "How many files are in the current directory?"

while true; do
    read guess
    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed correctly!"
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done

#!/usr/bin/env bash
# File: guessinggame.sh

get_file_count() {
  local count
  count=$(ls -1 | wc -l)
  echo "$count" | tr -d ' '
}

file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true
do
  read -p "Enter your guess: " guess

  if ! [[ "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Please enter a valid positive integer."
  elif [[ "$guess" -lt "$file_count" ]]
  then
    echo "Your guess is too low. Try again!"
  elif [[ "$guess" -gt "$file_count" ]]
  then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed correctly. There are $file_count files in the current directory."
    break
  fi
done

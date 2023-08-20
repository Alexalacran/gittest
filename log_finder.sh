#!/bin/bash 

file_name=$1
key_word=$2

#Get today's date in YYYY-MM-DD format
today=$(date +%Y-%m-%d)
count=$(grep -i -c "$key_word" "$file_name")

tail="out.txt"

output_file="${today}_${key_word}_${count}_${tail}"

grep -i "$key_word" "$file_name" > "$output_file"

echo "Search for '$key_word' in log file '$file_name' successfully!"


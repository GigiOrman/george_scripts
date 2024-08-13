#!/bin/bash

# Create a report file for a single shipping container
# Author: Reindert

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" "$input_file" > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"

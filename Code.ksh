#!/bin/bash

disc_usage_report() {
    local dir="$1"
    local recipient="$2"
    local subject="Space used by directories in GB - Disk"

    usg=$(df -g "$dir" | awk 'NR==2 {print $4}' | tr -d '%')
    du_output=$(du -shG "$dir")

    echo "$du_output" >> /user/prajwal/path/space_scripts/results.txt
}

recipient="prajwalp220@gmail.com"
directories="/user/prajwal/path/space_scripts/path_list.txt"

# Remove the existing result file
rm -f /user/prajwal/path/space_scripts/results.txt
  
# Read each directory and generate report
while read dir; do
    disc_usage_report "$dir" "$recipient"
done < "$directories"

# Sending email with results
res=/user/prajwal/path/space_scripts/results.txt
subject="Space used by directories in GB - IDL"
body="Disk paths usage summary:"

{
    echo "$body"
    cat "$res"
} | mail -s "$subject" "$recipient"


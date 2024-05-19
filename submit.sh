#!/bin/bash

# IMPORTANT: Do not Run the script YET!!!
# CHANGE all these variable values with the appropriate information BEFORE RUNNING the script

# Assign professor details and class information to variables
firstname="prof_firstname"  # Replace 'prof_firstname' with your professor's first name: e.g., Fardad
lastname="prof_lastname"    # Replace 'prof_lastname' with your professor's last name: e.g., Soleimanloo
classCode="2??"             # Replace '??' with your subject code (e.g., 00 or 44): e.g., 124, 244, 222
sectionCode="SSS"           # Replace 'SSS' with the section: [naa, nbb, nra, zaa, etc.] in UPPER CASE

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <workshop_number> <part_number>"
    exit 1
fi

# Assign arguments to variables
workshop_number=$1
part_number=$2

# Validate workshop and part numbers (simple numeric check, customize as needed)
if ! [[ "$workshop_number" =~ ^[0-9]+$ ]] || ! [[ "$part_number" =~ ^[0-9]+$ ]]; then
    echo "Error: Both workshop_number and part_number should be numeric."
    exit 1
fi

# Construct the submission command
command="/home/${firstname}.${lastname}/submit ${classCode}/w${workshop_number}/p${part_number}_${sectionCode}"

# Check if the command exists (optional, adjust according to your environment)
if ! command -v ${command%% *} &> /dev/null; then
    echo "Error: The submission command is not found. Please check the path and variables."
    exit 1
fi

# Execute the submission command
echo "Running command: $command"
$command

# Check if the submission was successful (assuming success if no error code is returned)
if [ $? -eq 0 ]; then
    echo "Submission successful."
else
    echo "Submission failed. Please check the details and try again."
    exit 1
fi

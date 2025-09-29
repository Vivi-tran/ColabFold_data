#!/bin/bash
set -euo pipefail
shopt -s nullglob    

# ---------------------------
# 1. Input / Output Folders
# ---------------------------
input_folder="/tests02"
temp_output_folder="outputdir/"
final_output_folder="tests02_out/"

# Create the final output folder if it doesn't exist
mkdir -p "$final_output_folder"
mkdir -p "$temp_output_folder"

# 2. Collect all .fa files
fa_files=("$input_folder"/*.fa)

# 3. Check if any .fa files exist
if [ ${#fa_files[@]} -eq 0 ]; then
    echo "WARNING: No .fa files found in $input_folder. Exiting."
    exit 1
else
    echo "INFO: Found ${#fa_files[@]} .fa files in $input_folder."
fi

# 4. Process each .fa file
for fa_path in "${fa_files[@]}"; do
    base_name=$(basename "$fa_path" .fa)
    echo "INFO: Processing $base_name.fa..."

done

#!/bin/bash

# Directory name
DIR="folder"

# Get the full path of the currently running script
script_path=$(readlink -f "$0")

# Print the path
echo "The path of this script is: $script_path"

# Get the full path of the currently running script
script_path=$(realpath "$0")

# Get the directory of the script
script_dir=$(dirname "$script_path")

# Define the new folder name
new_folder_name="new_folder"

# Create the full path for the new folder
new_folder_path="$script_dir/$new_folder_name"

# Check if the folder already exists, if not, create it
if [ ! -d "$new_folder_path" ]; then
  mkdir "$new_folder_path"
  echo "Folder '$new_folder_name' created in directory '$script_dir'."
else
  echo "Folder '$new_folder_name' already exists in directory '$script_dir'."
fi


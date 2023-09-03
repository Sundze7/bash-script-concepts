# #!/bin/bash

# read -p "Enter the name of a file or directory: " name

# # Check if the name exists using find command with regex (searching in all folders in home)
# if find "$HOME" -regex ".*/$name" -print -quit | grep -q ""; then
#     echo "File or directory '$name' exists."

#     # Check if it's a regular file
#     if [ -f "$HOME/$name" ]; then
#         echo "$name is a regular file."
#     fi

#     # Check if it's a directory
#     if [ -d "$HOME/$name" ]; then
#         echo "$name is a directory."
#     fi

#     # Perform ls command with long listing option
#     ls -l "$HOME/$name"
# else
#     echo "File or directory '$name' does not exist."
# fi

#!/bin/bash

read -p "Enter the name of a file or directory: " name

# Find the file or directory in subdirectories of home
result=$(find "$HOME" -name "$name" -print -quit)

if [[ -n "$result" ]]; then
    echo "File or directory '$name' exists."

    # Check if it's a regular file
    if [[ -f "$result" ]]; then
        echo "$name is a regular file."
    fi

    # Check if it's a directory
    if [[ -d "$result" ]]; then
        echo "$name is a directory."
    fi

    # Print the path
    echo "Path: $result"

    # Perform ls command with long listing option
    ls -l "$result"
else
    echo "File or directory '$name' does not exist."
fi
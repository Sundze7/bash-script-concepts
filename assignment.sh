#!/bin/bash

# Set the URL of the file to download
url="https://media.githubusercontent.com/media/datablist/sample-csv-files/main/files/customers/customers-1000.csv"

# Set the output file name
output_file="file.csv"

# Download the file using curl
curl -o "$output_file" "$url"

# Download the file using wget
# wget -O "$output_file" "$url"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "File downloaded successfully."
else
    echo "Failed to download the file."
fi


# Filters customer data and creates reports

if [[ ! $1 ]]; then
    echo "Error: No value for country provided"
    exit 1
else
    country=$1
fi

if [[ ! $2 ]]; then
    echo "Error: Output directory name not provided"
    exit 1
else
    directory=$2
fi

country=$1
directory=$2
# $1 means 1st value passed

# mkdir -p reports
mkdir -p "${directory}"

# grep -Ei  "Togo" customers.csv > reports/Togo.csv

grep -Ei "${country}" "${output_file}" > "${directory}/${country}".csv

# Pause for 10 seconds
sleep 10

# Delete the file
rm "$output_file"
echo "File deleted."
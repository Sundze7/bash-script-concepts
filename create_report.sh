#! /bin/bash

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

grep -Ei "${country}" customers.csv > "${directory}/${country}".csv
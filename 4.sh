#!/bin/bash
set -x

# Download the file from the given URL
wget https://www.amfiindia.com/spages/NAVAll.txt -O NAVAll.txt

# Extract the Scheme Name and Asset Value fields and save them in a CSV file
cat NAVAll.txt | cut -d ';' -f 4,6 > scheme_asset_values.csv

# Remove the downloaded file
rm NAVAll.txt


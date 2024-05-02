#!/bin/bash

for file in *txt; do
    md5sum "$file" >> md5checks.txt
    echo "running file: " $file
done

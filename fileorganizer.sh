#!/bin/bash

for filename in ./input_files/*; do
    filedate=$(stat -c%y "$filename")      # %y     Time of last data modification, human-readable

    fileyear=$(date -d "$filedate" +%Y)
    filemonth=$(date -d "$filedate" +%m)

    if [[ ! -d "$fileyear/$filemonth" ]]; then
        echo "directory does not exist, creating directory $fileyear/$filemonth"
        mkdir -p "$fileyear/$filemonth"
    fi

    echo "moving $filename to directory $fileyear/$filemonth"
    mv "$filename" "$fileyear/$filemonth"
done
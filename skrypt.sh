#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    count=100
    if [ ! -z "$2" ]; then
        count=$2
    fi
    for i in $(seq 1 $count); do
        filename="log${i}.txt"
        echo "Filename: $filename, Script: $0, Date: $(date)" > $filename
    done
fi
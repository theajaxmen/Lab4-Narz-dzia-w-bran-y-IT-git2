#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
    count=100
    if [ ! -z "$2" ]; then
        count=$2
    fi
    for i in $(seq 1 $count); do
        filename="log${i}.txt"
        echo "Nzwa pliku: $filename, Skrypt: $0, Data: $(date)" > $filename
    done
elif [ "$1" == "--help" ]; then
    echo "Opcje: "
    echo "--date        Pokazuje date"
    echo "--logs [num]  Tworzy logi"
    echo "--help        Pokazuje te okno"
fi
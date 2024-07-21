#!/bin/bash

REPO_URL="https://github.com/theajaxmen/Lab4-Narz-dzia-w-bran-y-IT-git2"

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
elif [ "$1" == "--init" ]; then
    git clone $REPO_URL
    echo "export PATH=\$PATH:$(pwd)//Lab4-Narz-dzia-w-bran-y-IT-git2" >> ~/.bashrc
    source ~/.bashrc
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
    count=100
    if [ ! -z "$2" ]; then
        count=$2
    fi
    mkdir -p error
    for i in $(seq 1 $count); do
        filename="error/error${i}.txt"
        echo "Filename: $filename, Script: $0, Date: $(date)" > $filename
    done
fi
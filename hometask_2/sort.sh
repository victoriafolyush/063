#!/bin/bash

file=versions.txt

if ! [ -f "$file" ]; then
    wget http://yoko.ukrtux.com:8899/versions.txt
    cat | sort -V versions.txt
    echo "Finish"
else
    cat | sort -V versions.txt
    echo "Finish"
fi

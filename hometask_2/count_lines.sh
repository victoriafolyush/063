#!/bin/bash

file=versions.txt

if ! [ -f "$file" ]; then
    wget http://yoko.ukrtux.com:8899/versions.txt
    cat versions.txt | sort | uniq -c | sort -nr | head -1
    echo "Finish"
else
  cat versions.txt | sort | uniq -c | sort -nr | head -1
    echo "Finish"
fi

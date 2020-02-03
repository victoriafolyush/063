#!/bin/bash

# find /home/victoria/Desktop/Labs-for-DevOps -mtime -1 -ls

backup_dir="$HOME"/"$1"
source_dir="$HOME"/"$2"
date=$(date +%Y.%m.%d)


mkdir -p "$backup_dir"/"$date"
cp $(find "$source_dir"/ -mtime -1) "$backup_dir"/"$date"

#!/bin/bash

for ip in "$@"; do
	nc  -z -v -n -w 1 $ip 80 >> report.txt 2>&1
	nc  -z -v -n -w 1 $ip 433 >> report.txt 2>&1
done

grep "succeeded" report.txt
rm -r report.txt

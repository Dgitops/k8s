#!/bin/bash

for n in $(seq 14)

do        

date -s "11/$n/14"

touch access_www_$(date +%F).log
ls -l *.log | wc -l
rm -rf $(find -type f -mtime +7 -name "*.log")
ls -l *.log | wc -l

done

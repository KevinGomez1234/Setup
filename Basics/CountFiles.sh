#!/bin/bash
count=0
for c in $(ls)
do
echo $c
count=$((count+1))
done
echo $count

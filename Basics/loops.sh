#1/bin/bash
for name in mathew mark luke
do
    echo good morning $name
done

count=1
for file in `ls *.log`
do
    echo file number $count: $file;
    count=$((count+1))
done 

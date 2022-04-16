#!/bin/bash
source=$1
dest=$2
name=backup.tar.gz
function checkExists(){
    if [  -f $dest/backup.tar.gz ]; then
        echo this file already exist
        exit 1
    fi
}

checkExists;

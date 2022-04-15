#!/bin/bash
#will create a backup of the source along with the weekday appended to the new archive/zip file
#to unzip simply use -xf options using tar and name of your backup file
source=$1;
dest=$2;
name=backup$(date | tr -s ' ' | cut -d ' ' -f 1).tar.gz
tar -cpzvf $name $source

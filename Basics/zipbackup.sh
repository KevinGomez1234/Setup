#!/bin/bash
#will create a backup of the source along with the weekday appended to the new archive/zip file
#to unzip simply use -xf options using tar and name of your backup file
source=$1;
date1=$(date | tr -s ' ' | cut -d ' ' -f 2);
date2=$(date | tr -s ' ' | cut -d ' ' -f 3);
date3=$(date | tr -s ' ' | cut -d ' ' -f 4);
date5=$(date | tr -s ' ' | cut -d ' ' -f 5);
date6=$(date | tr -s ' ' | cut -d ' ' -f 6); 
dt=$date1$date2$date3$date5$date6; 
echo $dt;
name=backup$dt.tar.gz
tar -cpzvf $name $source

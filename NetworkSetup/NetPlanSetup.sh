#!/bin/bash

ssid=$1;
pass=$2;
interface=$3;

if [! -f /etc/netplan/50-cloud-init.yaml ]; then
    if [-f ./50-cloud-init.yaml]; then
        sed -i "s/ssid/$ssid/g"
        sed -i "s/iface/$interface/g"
        sed -i "s/pass/$pass/g"        
    else
        echo "Canot complete this command"
        exit 1
    fi 
else
    echo "50-cloud-init.yaml already exists, setup yourself"
fi

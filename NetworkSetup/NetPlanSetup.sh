#!/bin/bash

ssid=$1;
pass=$2;
interface=$3;

if [! -f /etc/netplan/50-cloud-init.yaml ]; then
    if [-f ./50-cloud-init.yaml]; then
        cp ./50-cloud-init.yaml ./50-cloud-init.yaml.bk
        sed -i "s/ssid/$ssid/g" ./50-cloud-init.yaml
        sed -i "s/iface/$interface/g" ./50-cloud-init.yaml
        sed -i "s/pword/$pass/g" ./50-cloud-init.yaml
        rm ./50-cloud-init.yaml
        mv ./50-cloud-init.yaml.bk ./50-cloud-init.yaml
    else
        echo "Canot complete this command"
        exit 1
    fi 
else
    echo "50-cloud-init.yaml already exists, setup yourself"
fi

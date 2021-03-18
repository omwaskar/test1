#!/bin/bash

domain=$((hostname) | grep -oP '(?<=alpha.domain).*(?=.example.com)')
default_if=$(ip route list | awk '/^default/ {print $5}')

if [[ "172.17.$domain.21" == "$(ip a | grep -o -i 172.17.$domain.21)" ]]; then
    if [[ "172.17.$domain.1" == "$(ip route | grep -i -o 172.17.$domain.1)" ]]; then
       if [[ "172.17.$domain.21/16" == "$(default_if=$(ip route list | awk '/^default/ {print $5}'))" ]]; then
           echo "Network setup is correct"
       else
           echo "netmask is not correct"
       fi
    else
        echo "gateway is not correct"
    fi
else
    echo "Ip address is not correct"
fi

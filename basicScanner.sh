#! /bin/bash

#This script is designed to find hosts with MySQL installed

echo "Enter the starting IP address:"
read firstIP

echo "Enter the last octet of the last IP address:"
read lastOctetIP

echo "Enter the port number you want to scan for:"
read port

nmap -sT $firstIP-$lastOctetIP -p $port >/dev/null -oG MySQLscan

cat MySQLscan | grep closed > MySQLscan2

cat MySQLscan2
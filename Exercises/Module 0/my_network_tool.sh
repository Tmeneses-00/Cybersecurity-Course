#!/bin/sh

echo "Welcome to My Network Tool!"

    echo "Please choose one of the following options:"

    echo "1) Check Network Interface Information"
    echo "2) Ping a Host"
    echo "3) Port Scan with Nmap"
    echo "4) Display Routing Table"
    echo "5) Traceroute to Host"
    echo "6) Exit"

    read option

case $option in
    "1")
    echo "ifconfig"
    ifconfig
    ;;

    "2")
    echo "ping 192.168.1.252"
    ping 192.168.1.252
    ;;

    "3")
    read -p "Enter the host IP address:" host
    echo "Scanning ports on $host"
    nmap -p "$host"
    ;;

    "4")
    echo "Here is your Routing Table:"
    netstat -rn
    ;;

    "5")
    echo "Enter the host IP address:" 
    read host
    traceroute "$host"
    ;;

    "6")
    echo "exit"
    exit
    ;;
esac
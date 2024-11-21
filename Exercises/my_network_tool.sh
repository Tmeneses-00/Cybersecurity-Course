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
    echo "nmap 192.168.1.252"
    nmap 192.168.1.252
    ;;

    "4")
    echo "netstat -rn"
    netstat -rn
    ;;

    "5")
    echo "traceroute 192.168.1.252"
    traceroute 192.168.1.252
    ;;

    "6")
    echo "exit"
    exit
    ;;
esac
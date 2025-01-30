#!/bin/bash
sudo systemctl status iptables &> /dev/null
if [ $? -eq 0 ]; then
    echo "Iptables service is working fine"
    echo "You can add rules now"
    echo "Please enter the source IP or network IP:"
    read src
    echo "Please enter the destination IP or website:"
    read dst
    echo "Please enter the destination port:"
    read dstp
    echo "Please enter the protocol (e.g., tcp, udp):"
    read proto
    echo "Please enter the target/action (ACCEPT, DROP, REJECT):"
    read target

    echo "Adding command..."
    sudo iptables -I FORWARD 1 -p $proto -s $src -d $dst --dport $dstp -j $target
else
    echo "Iptables service is not running."
fi

#!/bin/bash
######################
# 10-set-swap-firewall.sh
######################

sudo echo "----------------------------------"
echo "$0"
echo "----------------------------------"




sudo swapoff -a && sudo sed -i '/swap/s/^/#/' /etc/fstab
sudo ufw disable


sudo apt install -y 
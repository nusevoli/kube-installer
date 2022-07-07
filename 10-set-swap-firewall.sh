#!/bin/bash
######################
# 10-set-swap-firewall.sh
######################
sudo swapoff -a && sudo sed -i '/swap/s/^/#/' /etc/fstab
sudo ufw disable

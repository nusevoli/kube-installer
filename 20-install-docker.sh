#!/bin/bash
######################
# 20-install-docker.sh
######################
sudo rm -f /var/lib/dpkg/lock

sudo apt-get update
sudo apt-get install -y ca-certificates  curl  gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER


sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker


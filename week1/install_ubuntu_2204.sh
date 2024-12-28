#!/bin/bash

# References:
#   https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04

echo "### Step 1 — Installing Docker ###"

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker

echo " "

echo "### Step 2 — Executing the Docker Command Without Sudo ###"

sudo usermod -aG docker ${USER}
su - ${USER}
groups
sudo usermod -aG docker username

echo " "

echo "### Step 3 — Using the Docker Command ###"

docker info

echo "### Done! ###"
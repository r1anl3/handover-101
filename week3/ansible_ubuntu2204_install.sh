#!/bin/bash

# References:
#   https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-22-04

echo "### Step 1 — Installing Ansible ###"

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
ansible --version
echo " "

echo "### Step 2 — Setting Up the Inventory File ###"

CONTENT="[servers]
localhost ansible_connection=local

[all:vars]
ansible_python_interpreter=/usr/bin/python3"

echo "$CONTENT" | sudo tee /etc/ansible/hosts > /dev/null

if [[ $? -eq 0 ]]; then
    echo "Successfully updated /etc/ansible/hosts for localhost."
else
    echo "Failed to update /etc/ansible/hosts."
    exit 1
fi

ansible-inventory --list -y
echo " "

echo "### Step 3 — Testing Connection ###"

ansible all -m ping -u root
echo " "

echo "### Step 4 — Running Ad-Hoc Commands ###"

ansible all -a "df -h" -u root
echo " "

echo "### Done! ###"
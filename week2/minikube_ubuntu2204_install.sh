#!/bin/bash

# References:
#   https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fdebian+package

echo "### Step 1 — Installing Minikube ###"

sudo apt update
mkdir tmp
cd tmp/
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

echo " "

echo "### Step 2 — Start Minikube ###"

minikube start

echo " "

echo "### Step 3 — Using the Kubenetes Command ###"

kubectl get ns

echo "### Done! ###"
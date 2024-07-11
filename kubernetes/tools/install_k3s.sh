#!/bin/bash

# update and install curl
sudo apt-get -y update \
    && sudo apt-get install -y curl

# download script and install k3s
curl -sfL https://get.k3s.io | sh - 

# Check for Ready node, takes ~30 seconds 
sudo k3s kubectl get node

# uninstall k3s
# sudo source /usr/local/bin/k3s-uninstall.sh
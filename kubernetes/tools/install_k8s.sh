#!/bin/bash

# check here: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

# update and install curl
sudo apt-get -y update \
    && sudo apt-get install -y curl

# download kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# chmod +x kubectl                  # turn the file executable
# mkdir -p ~/.local/bin             # create a directory for the executable
# mv ./kubectl ~/.local/bin/kubectl # move the file to the directory

# check version
kubectl version --client

# remove package file
rm -f kubectl

# uninstall kubectl
# sudo apt-get remove kubectl
# sudo apt-get autoremove
# sudo apt-get autoclean
# sudo rm -rf /usr/local/bin/kubectl
# sudo rm -rf ~/.kube
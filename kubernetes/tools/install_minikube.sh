#!/bin/bash

# check here: https://minikube.sigs.k8s.io/docs/start/

# operational system update and dependcies
sudo apt-get -y update \
    && sudo apt-get install -y curl

# download and install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

# start the minikube cluster
minikube start --driver docker # --cpus 4 --memory 8192 --disk-size 30g --kubernetes-version v1.16.0

# remove package
rm -f minikube_latest_amd64.deb

# unistall minikube
# minikube stop
# minikube delete
# sudo dpkg --purge minikube
# sudo rm -rf ~/.minikube
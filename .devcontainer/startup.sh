#!/bin/sh

# echo "Configure direnv"
# echo "eval \"$(direnv hook bash)\"" >> ~/.bashrc

echo "Upgrading containerlab to the latest version"
sudo clab version upgrade

echo "Upgrading pip"
pip install --upgrade pip

echo "Installing 'eos-downloader' package"
pip install eos-downloader

echo "Download Arista cEOS v4.30.9M and import iamge to docker"
echo "WARNING: ARISTA_TOKEN env var must be set"
ardl get eos --version 4.30.9M --image-type cEOS --import-docker

# images must be referenced in clab topology files with 'image: arista/ceos:4.30.9M'
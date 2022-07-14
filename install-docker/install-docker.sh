#!/bin/bash

# ------------------------
# Install script for Docker, based off of steps provided in the docker documentation.
# ------------------------

#variables
DOCKER_USER=$1


# uninstall old versions
sudo apt-get remove -y docker docker-engine docker.io containerd runc

# Set up the repository pre-reqs
sudo apt-get update && sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# set up the repository
echo "deb [arch=$(dpkg --print-architecture) \
    signed-by=/etc/apt/keyrings/docker.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" |
    sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

# Install Docker Engine
sudo apt-get update && sudo apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose-plugin

# to manage docker as a non-root user
# create the docker group
sudo groupadd docker

# add current running user to the docker group
sudo usermod -aG docker "$DOCKER_USER"

echo 'Installation complete. Log out and log back in to test non-root docker access.'

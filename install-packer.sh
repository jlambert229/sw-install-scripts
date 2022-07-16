#!/bin/bash

# ------------------------
# Install script for Packer, based off of steps provided in the Packer documentation.
# ------------------------

# Add the HashiCorp GPG key.

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the official HashiCorp Linux repository.

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com \
    $(lsb_release -cs) main"

# Update and install.

sudo apt-get update && sudo apt-get install -y packer

echo 'Packer Installation complete.'
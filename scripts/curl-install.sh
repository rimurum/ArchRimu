#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchRimu Folder."
    echo "Please use ./archrimu.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchRimu Project"
git clone https://github.com/christitustech/ArchRimu

echo "Executing ArchRimu Script"

cd $HOME/ArchRimu

exec ./archrimu.sh

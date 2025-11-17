#!/bin/bash

echo "Installing zsh"

sudo apt install zsh -y

echo "Now please change your shell (enter /bin/zsh)"

chsh $USER

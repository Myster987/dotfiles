#!/bin/bash

echo "Installing zsh"

sudo pacman -S --noconfirm zsh

echo "Now please change your shell (enter /usr/bin/zsh)"

chsh $USER

#!/bin/zsh

# Give permissions
chmod +x ./update-apt.sh
chmod +x ./install-zsh.sh
chmod +x ./install-brew.sh
chmod +x ./install-tmux.sh
chmod +x ./install-github-cli.sh

chmod +x ./install-bat.sh
chmod +x ./install-eza.sh
chmod +x ./install-fzf.sh
chmod +x ./install-ripgrep.sh
chmod +x ./install-starship.sh
chmod +x ./install-zoxide.sh


# Must have
./update-apt.sh
./install-zsh.sh
./install-brew.sh
./install-tmux.sh
./install-github-cli.sh

# Nice to have
./install-bat.sh
./install-eza.sh
./install-fzf.sh
./install-ripgrep.sh
./install-starship.sh
./install-zoxide.sh

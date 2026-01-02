#!/bin/zsh

# Give permissions
chmod +x ./update-apt.sh
chmod +x ./install-stow.sh
chmod +x ./symlink-files.sh
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
chmod +x ./install-uv.sh
chmod +x ./install-sops.sh
chmod +x ./install-age.sh


# Must have
./update-apt.sh
./install-stow.sh
./symlink-files.sh
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
./install-uv.sh
./install-sops.sh
./install-age.sh

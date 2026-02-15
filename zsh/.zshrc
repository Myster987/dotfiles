# Just source the Omarchy bash aliases, or copy them over
source ~/.local/share/omarchy/default/bash/aliases

export PATH="$HOME/.local/bin:$PATH"

export SUDO_EDITOR="$EDITOR"
export BAT_THEME=ansi
export TERM=xterm-256color
export COLORTERM=truecolor

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

ZSH_AUTOSUGGEST_USE_ASYNC=1

# Add in snippets
# zinit snippet OMZL::git.zsh
# zinit snippet OMZP::git
# zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
# zinit snippet OMZP::brew
# zinit snippet OMZP::rust

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Path CLIs
. "$HOME/.cargo/env"

# Aliases

#alias ls='eza -la'
alias k='kubectl --kubeconfig="./kubeconfig.yaml"'
alias grep='rg'
alias sops-age="export SOPS_AGE_KEY_FILE=./age.agekey && sops"
alias k9s-sops='sops-age exec-file ./kubeconfig.yaml "k9s --kubeconfig {}"'

# Shell integrations

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

eval "$(atuin init zsh)"
eval "$(starship init zsh)"

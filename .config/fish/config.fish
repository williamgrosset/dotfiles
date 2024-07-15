# Hide greeting
set fish_greeting ""

# Editor
set -gx EDITOR nvim

# Aliases
## Neovim
alias v "nvim"

## Eza
alias l "eza -la --icons"

## Git
alias gs "git status"
alias gd "git diff"
alias gp "git push"
alias gb "git branch"
alias gch "git checkout"
alias ga "git add --all"
alias gc "git commit -m"

## Python
alias python "/usr/local/bin/python3"

# Starship prompt
## Config path
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
## Initialize
starship init fish | source

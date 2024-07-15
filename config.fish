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

# Prompts
## Starship
starship init fish | source

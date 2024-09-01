# Hide greeting
set fish_greeting ""

# Editor
set -gx EDITOR nvim

# Aliases
## Neovim
alias v "nvim"

## Eza
alias l "eza -la --icons"

## Bat
alias cat "bat"

## Zoxide
alias zx "z"

## Git
alias gs "git status"
alias gd "git diff"
alias gp "git push"
alias gb "git branch"
alias gch "git checkout"
alias ga "git add"
alias gal "git add --all"
alias gc "git commit -m"

## Python
alias python "/usr/local/bin/python3"

# Paths
## XDG
set -x XDG_CONFIG_HOME ~/.config

## Starship
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

## Rust
set -x PATH ~/.cargo/bin $PATH

## Deno
set -Ux fish_user_paths $fish_user_paths ~/.deno/bin

# Initialize tools
starship init fish | source
zoxide init fish | source

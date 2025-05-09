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
alias gpsh "git push"
alias gpll "git pull"
alias gb "git branch"
alias gch "git checkout"
alias ga "git add"
alias gall "git add --all"
alias gc "git commit -m"
alias gr "git restore"

## Python
alias python "/usr/local/bin/python3"

## Corepack
set -x COREPACK_ENABLE_AUTO_PIN 0

# Paths
## XDG
set -x XDG_CONFIG_HOME ~/.config

## Starship
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

## Rust
set -x PATH ~/.cargo/bin $PATH

## Deno
set -Ux fish_user_paths $fish_user_paths ~/.deno/bin

## pipx
set PATH $PATH /Users/williamgrosset/.local/bin

# Initialize tools
starship init fish | source
zoxide init fish | source

# Load secrets
if test -f ~/.config/fish/secrets.fish
  source ~/.config/fish/secrets.fish
end

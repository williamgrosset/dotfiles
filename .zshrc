# Themes
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Aliases 
## Common
alias l="ls -la"
alias v=nvim

## Git
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gb="git branch"
alias gch="git checkout"
alias ga="git add --all"
alias gc="git commit -m"

# Paths
## oh-my-zsh installation
export ZSH="/Users/williamgrosset/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

## nvm
function load-nvm {
  export NVM_DIR="/Users/williamgrosset/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

# nvm
if [[ "x${TERM_PROGRAM}" = "xvscode" ]]; then
  # do nothing
else
  load-nvm
fi

## Ruby
eval "$(rbenv init - zsh)"

## Python
alias python=/usr/local/bin/python3

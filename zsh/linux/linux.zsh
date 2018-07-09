alias ls='ls -alh --color'
export GIT_EDITOR='vim'
export EDITOR='vim'

export PATH=/Users/`whoami`/.dotfiles/bin:$PATH

# Ensure that tmux ctrl a and e work
bindkey -e

# reduce the zsh key timeout
export KEYTIMEOUT=1

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

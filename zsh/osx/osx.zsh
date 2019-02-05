# OS X specific settings

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin::/usr/local/opt/go/libexec/bin:~/go/bin:$PATH
export PATH=$PATH:$HOME/.cargo/bin
export GIT_EDITOR='vim'
export EDITOR='vim'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

#export ARCHFLAGS="-arch x86_64"

ulimit -n 4096

# When using Go
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
#
export GOPATH=/Users/kalv/Development/golang/workspace
export PATH=$PATH:$GOPATH/bin

# Ensure that tmux ctrl a and e work
bindkey -e

# reduce the zsh key timeout
export KEYTIMEOUT=1

# Make sure FZF uses global ag settings
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND='ag -g ""'

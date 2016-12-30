# OS X specific settings

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/.rbenv/bin:$PATH
export GIT_EDITOR='nvim'
export EDITOR='nvim'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
export NVM_DIR="$HOME/.nvm"


case $OSTYPE in
  darwin10*)
		export ARCHFLAGS="-arch x86_64"
  ;;;
esac

ulimit -n 4096

# When using Go
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
#
# export GOPATH=/usr/local/opt/go/libexec

export PATH="./bin:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Ensure that tmux ctrl a and e work
bindkey -e

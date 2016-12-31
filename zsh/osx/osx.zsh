# OS X specific settings

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/.rbenv/bin:$PATH
export GIT_EDITOR='vim'
export EDITOR='vim'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

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

# Ensure that tmux ctrl a and e work
bindkey -e

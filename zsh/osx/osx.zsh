# OS X specific settings

export PATH=/usr/local/bin:~/usr/local/bin:/usr/local/sbin:$PATH
export SVN_EDITOR='mate -w'
export GIT_EDITOR='mate -wl1'
export EDITOR='mate'
export GEM_OPEN_EDITOR='mate'
export LESSEDIT='mate -l %lm %f'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node

# ree
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -ahGl'

fpath=(~/.dotfiles/zsh/osx/functions $fpath)
autoload -U ~/.dotfiles/zsh/osx/functions/*(:t)

case $OSTYPE in
  darwin10*)
		export ARCHFLAGS="-arch x86_64"
  ;;;
esac

ulimit -n 4096

# OS X specific settings

# Ruby
#export RUBY_GC_MALLOC_LIMIT=60000000
#export RUBY_FREE_MIN=200000

# for ruby 2.1
# export RUBY_GC_MALLOC_LIMIT=100000000
# export RUBY_GC_HEAP_INIT_SLOTS=40000
# export RUBY_GC_HEAP_FREE_SLOTS=500000

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/.rbenv/bin:$PATH
export GIT_EDITOR='atom'
export EDITOR='atom'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -ahGl'

# sbt
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r20

case $OSTYPE in
  darwin10*)
		export ARCHFLAGS="-arch x86_64"
  ;;;
esac

ulimit -n 4096

# setup rbenv
eval "$(rbenv init -)"

export PATH=./bin:$PATH

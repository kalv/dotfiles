# OS X specific settings

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/users/kalv/Development/android-sdk-mac_x86/tools:/users/kalv/Development/android-sdk-mac_x86/platform-tools:$PATH
export GIT_EDITOR='vim'
export EDITOR='vim'
export GEM_OPEN_EDITOR='subl'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# ree
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

# EC2 keys
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.4.1/jars"

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

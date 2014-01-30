# OS X specific settings

# Ruby
#export RUBY_GC_MALLOC_LIMIT=60000000
#export RUBY_FREE_MIN=200000

# for ruby 2.1
#export RUBY_GC_HEAP_FREE_SLOTS=200000

export PATH=/Users/`whoami`/.dotfiles/bin:/usr/local/bin:~/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:~/.rbenv/bin:$PATH
export GIT_EDITOR='vim'
export EDITOR='vim'
export COMMAND_MODE=legacy

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# EC2 keys
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
#export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
#export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
#export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"
#export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.4.1/jars"

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

eval "$(rbenv init -)"

# for Caliper development
export CALIPER_API_HOST="http://caliper.dev"
export CALIPER_API_KEY="50cfd06f-79d4-4fc7-88d4-71869c15e83b"

alias z='zeus'

export SAUCELABS_USER=coherence
export SAUCELABS_KEY=348f238d-9b62-4cc3-a2f4-5c9c5fa4a887

export CHROMIUM_SRC=/Users/kalv/Development/chrome/chrome-svn-trunk/src
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

export CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl`"
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

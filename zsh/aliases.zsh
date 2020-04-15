# ls
alias ls='ls -ahGl'
alias l="ls -lAh"
alias ll="ls -al"
alias la='ls -A'

# git
alias d='git diff'
alias c='git commit'
alias ca='git commit -a'
alias s='git status -b'
alias g-clean='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

# bundler
alias be='bundle exec'
alias bi='bundle check; bundle install'

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias vi='vim'

alias ag='ag -u --unrestricted'

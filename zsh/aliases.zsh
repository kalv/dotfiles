alias g='git'
alias fr='freerange'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -al"
alias la='ls -A'

# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
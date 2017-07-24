HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000

setopt appendhistory
setopt share_history
setopt histignoredups
setopt hist_no_store
setopt histreduceblanks
setopt no_hist_beep
setopt HIST_IGNORE_ALL_DUPS

#bindkey "^[[A" history-beginning-search-backward
bindkey "^[[A" history-search-backward
#bindkey "^[[B" history-beginning-search-forward
bindkey "^[[B" history-search-forward


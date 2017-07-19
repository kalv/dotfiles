HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000

setopt appendhistory
setopt share_history
setopt histignoredups
setopt hist_no_store
setopt histreduceblanks
setopt no_hist_beep

# Using homebrew installed pluging
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use the up and down keys to search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/aliases.zsh

cdpath=(~/Development/apps ~/Development/javascript ~/Development/ruby ~/Development/sites)

# Load vendor specific scripts
source ~/.dotfiles/zsh/linux/linux.zsh
source ~/.dotfiles/zsh/completion.zsh

source ~/.dotfiles/zsh/history.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.dotfiles/bin/tmuxinator.zsh

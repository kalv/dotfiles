source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/aliases.zsh

cdpath=(~/Development/elixir ~/Development/clients ~/Development/apps ~/Development/javascript ~/Development/ruby ~/Development/sites)

# Load vendor specific scripts
source ~/.dotfiles/zsh/osx/osx.zsh
source ~/.dotfiles/zsh/completion.zsh

source ~/.dotfiles/zsh/history.zsh

# brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

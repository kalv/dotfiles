system_name=`uname -a`

source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/history.zsh
source ~/.dotfiles/zsh/aliases.zsh

# autoload -U ~/.dotfiles/zsh/functions/*(:t)

#setopt LOCAL_OPTIONS # allow functions to have local options
#setopt LOCAL_TRAPS # allow functions to have local traps

cdpath=(~/Development/elixir ~/Development/clients ~/Development/apps ~/Development/javascript ~/Development/ruby ~/Development/sites)

#setopt autopushd # Use pushd for all directory changing

# Load vendor specific scripts

source ~/.dotfiles/zsh/osx/osx.zsh

source ~/.dotfiles/zsh/completion.zsh

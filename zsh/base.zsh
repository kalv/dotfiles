system_name=`uname -a`

fpath=(~/.dotfiles/zsh/functions $fpath)

source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/title.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/history.zsh
source ~/.dotfiles/zsh/aliases.zsh

autoload -U ~/.dotfiles/zsh/functions/*(:t)

setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps

cdpath=(~ ~/Development/apps ~/Development/ruby ~/Development/freerange ~/Development/presentations)

setopt autopushd # Use pushd for all directory changing

# Load vendor specific scripts

case $system_name in
  Darwin*)
    source ~/.dotfiles/zsh/osx/osx.zsh
    ;;
  *)
    source ~/.dotfiles/zsh/linux/linux.zsh
    ;;;
esac

source ~/.dotfiles/zsh/completion.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

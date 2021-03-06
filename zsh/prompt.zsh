git_diff_color() {
  changes=$(git status)
  case $changes in
    *changes*)
      echo "%{$fg[red]%}"
      return
    ;;;
    *Untracked*)
      echo "%{$fg[red]%}"
      return
    ;;;
    *Unmerged*)
      echo "%{$fg[red]%}"
      return
    ;;;
    *committed*)
      echo "%{$fg[green]%}"
      return
    ;;;
  esac
  echo "%{$fg[cyan]%}"
}

git_sync() {
  changes=$(git status)
  case $changes in
    *ahead*)
      echo " ▲"
      return
    ;;
  esac
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " %{$fg[cyan]%}$(git_diff_color)${ref#refs/heads/}$(git_sync)"
}


autoload -U colors
colors

setopt prompt_subst

export PROMPT=$'%{$fg[cyan]%}%c$(git_prompt_info) %{$fg[yellow]%u\u227b %{$fg_no_bold[white]%}'

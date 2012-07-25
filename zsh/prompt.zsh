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
      echo "|%{$fg[red]%}▲%{$fg[cyan]%}"
      return
    ;;
  esac
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " %{$fg[red]%}git:%{$fg[cyan]%}$(git_diff_color)${ref#refs/heads/}$(git_sync)"
}


autoload -U colors
colors

setopt prompt_subst

# If we're running in an ssh session, use a different colour 
# than if we're on a local machine


export PROMPT=$'%{$fg[red]%}➜ %{$fg[cyan]%}%c$(git_prompt_info)  %{\e[0m%}'
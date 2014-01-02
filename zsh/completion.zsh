autoload -U compinit
compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Handle rake tasks.
_rake_does_task_list_need_generating () {
if [ ! -f .rake_tasks ]; then
  return 0;
else
  accurate=$(stat -f%m .rake_tasks)
  changed=$(stat -f%m Rakefile)
  return $(expr $accurate '>=' $changed)
fi
}
_rake () {
if [ -f Rakefile ]; then
  if _rake_does_task_list_need_generating; then
    echo "\nGenerating .rake_tasks..." > /dev/stderr
    rake --silent --tasks | cut -d " " -f 2 > .rake_tasks
  fi
  compadd `cat .rake_tasks`
fi
}
compdef _rake rake

# Parses the ssh known_hosts file for previously visited hosts, then offers
# them for completions in ssh, scp and sftp commands.

#local knownhosts
knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts

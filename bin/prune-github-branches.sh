# git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d

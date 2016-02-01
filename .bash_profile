function utils_aliases() {
    alias tf='tail -f'
    alias hg='history | grep'
    alias pss='ps aux | grep'
    alias vms='vmstat -S M -n 1 3000'
    
    # Show human friendly numbers and colors
    alias df='df -h'
    alias ll='ls -alGh'
    alias ls='ls -Gh'
    alias du='du -h -d 2'
    function cdl() {
        cd $* && /bin/ls -lA
    }
}

function git_aliases() {
    alias gs='git status '
    alias gd='git diff | less'
    alias gdc='git diff --cached | less'
    alias gc='git commit -m '
    alias gpl='git pull '
    alias gp='git push '
    alias gk='git checkout '
    alias ga='git add '
    alias gaa='git add -A '
    alias gm='git merge --no-commit --no-ff '
    alias gmm='gm master'
    alias gb='git blame '
    alias gr='git checkout -b '
    alias gl='git log -p'
    alias gshow='git remote show origin'
    alias gbr='git branch'
    alias gss='git stash'
    alias git-clean='git reset --hard HEAD && git clean -d -f'

    function gbf() {
        find . -name $1 | head -n 1 | xargs git blame
    }
}

utils_aliases
git_aliases

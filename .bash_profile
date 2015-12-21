function utils_aliases() {
    alias lash='ls -lAsh '
    alias e='emacs -nw'
    alias cdd='cd ~/dotfiles'
    alias tf='tail -f'
    alias hg='history | grep'
    
    # Show human friendly numbers and colors
    alias df='df -h'
    alias ll='ls -alGh'
    alias ls='ls -Gh'
    alias du='du -h -d 2'
    function cdl() {
        cd $* && /bin/ls -lA
    }
}

function dev_aliases() {
    alias pygrep="find . -name '*.py' -type f -print0 | xargs -0 grep "
    alias pygrepi="find . -name '*.py' -type f -print0 | xargs -0 grep -i "
    alias shgrep="find . -name '*.sh' -type f -print0 | xargs -0 grep "
    alias shgrepi="find . -name '*.sh' -type f -print0 | xargs -0 grep -i "
    alias fgrep="find . -type f | grep -v '\.git' | grep -v '\.tmbundle' \
        | xargs file | grep -v ELF | cut -d: -f1 | xargs grep "
    alias fgrepi="find . -type f | grep -v '\.git' | grep -v '\.tmbundle' \
        | xargs file | grep -v ELF | cut -d: -f1 | xargs grep -i "
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

function prompt {
    PS1="\!-\u@\h:\w/ $ "
    PS2="$ "
}

prompt
utils_aliases
dev_aliases
git_aliases

#!/bin/zsh
# saved at ~/.oh-my-zsh/custom/gCustomSetup.zsh

# Android Setup
export ANDROID_HOME=$HOME/Library/Android/sdk

# NVM Setup
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

########
# Python
#
export PYTHON=/usr/bin/python3

#######
# Dev Setup
#
export DEV=$HOME/dev
alias dev="cd ${DEV}"

######
# MISC Scripts
#
alias reflect="~/on-this-day.sh /Volumes/gStor/gVault/Health/Journal"

# Unalias existing declarations of this since it oh my zsh might declare it for me
unalias gcam 2>/dev/null
gcam() {
    git add .
    git commit -m "$1"
}

# https://www.conventionalcommits.org/en/v1.0.0/#summary

wip() {
  git add .
  git commit -m "wip: $1"
}

refactor() {
    git add .
    git commit -m "refactor: $1"
}

# Commenting out because it's causing issue
#test() {
#    git add .
#    git commit -m "test: $1"
#}

#########
# Aliases
#########
alias gg='git status'
alias gd='git diff'
alias gp='git pull'
alias gps='git push'
alias br='git branch'
alias brr='git branch -r'
alias gca='git add . && git commit'
alias gl='git log --pretty=oneline'
alias gd='git diff'
alias gcm='git checkout master'
alias gcmm='git checkout main'
alias grmm='git rebase master'
alias grm='git rebase main'
alias gb='git checkout -'
alias gc='git checkout .'
alias gammend='git add . && git commit --amend --no-edit --date="now"'
alias lisa='ssh rawrdoe@192.168.30.77'
alias rd='npm run dev'
alias gcompare='git rev-list --count --left-right main..HEAD'
alias gco='() { git checkout $(git branch | grep "$1" | head -n 1 | sed "s/^[ *]*//") }'
alias fix='() { git add . && git commit -m "fix($1): $2"}'
alias feat='() { git add . && git commit -m "feat($1): $2"}'
alias docs='() { git add . && git commit -m "docs($1): $2:}'
alias chore='() { git add . && git commit -m "chore($1): $2"}'

#########################
alias config='vim ~/.oh-my-zsh/custom/gCustomSetup.zsh && source ~/.zshrc'
alias ar='source ~/.zshrc'


#####################
# Wireguard
#
alias wgu="wg-quick up wg0"
alias wgd="wg-quick down wg0"

######################
# Projects
#
alias dddzen="cd ${DEV}/webdev/dddzen"

# pnpm
export PNPM_HOME="/Users/gerardo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
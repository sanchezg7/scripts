#!/bin/bash

export DEV=""
export WDEV=""


gcam() {
    git add . 
    git commit -m "$1"
}

#########
# Aliases
#########

alias gg='git status'
alias gd='git diff'
alias gp='git pull'
alias br='git branch'
alias brr='git branch -r'
alias gca='git add . && git commit'
alias gl='git log --pretty=oneline'
alias gd='git diff'
alias gcm='git checkout main'
alias gcmm='git checkout master'
alias grmm='git rebase master'
alias grm='git rebase main'
alias gb='git checkout -'
alias gc='git checkout .'
alias gammend='git add . && git commit --amend --no-edit --date="now"'
alias lisa=''
alias antonella=''

#########################
alias config='vim ~/.bashrc'
alias ar='source ~/.bashrc'

######################
alias dev="cd ${DEV}"
alias wdev="cd ${WDEV}"
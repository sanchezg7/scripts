#!/bin/bash

alias doup="sudo apt-get update && sudo apt-get upgrade -y"

alias setupnode_sl="ln -s /usr/bin/nodejs /usr/bin/node"
#force regex on the node token to prevent showing the grep process in ps
alias nodeps="ps ax | grep [n]ode | awk '{print \$1}'"
alias killnode="kill $(nodeps)"

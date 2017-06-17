#!/bin/bash

alias doup="sudo apt-get update && sudo apt-get upgrade -y"

alias setupnode_sl="ln -s /usr/bin/nodejs /usr/bin/node"
alias killnode="ps | grep node | awk '{print \$1}'"

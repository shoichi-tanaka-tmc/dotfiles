#!/bin/sh
alias ls="ls --color"
alias lt="ls -lth"
alias l1="ls -1"
alias lr="ls -lthr"
alias la="ls -ltha"
alias master="git checkout master"
alias center="center_info.sh"
alias gs="git status --short"
alias gl="git log"
alias gg="git log --graph"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias sw="git switch"
alias s="start"
alias caniuse="~/scripts/caniuse.sh"
alias c="~/scripts/caniuse.sh"
alias start_til="~/scripts/start_til.sh"
alias memo="~/scripts/start_til.sh"
alias grep="grep --color=auto"

HISTFILESIZE=100000
HISTSIZE=100000

HISTIGNORE='rm *:git reset *:exit:ls:lt'

bind '"\C-n": history-search-forward'
bind '"\C-p": history-search-backward'

# If there are multiple matches for completion, Tab should cycle through them

bind 'TAB':menu-complete

# Display a list of the matching files

bind "set show-all-if-ambiguous on"

# Perform partial completion on the first Tab press,
# only start cycling full results on the second Tab press

bind "set menu-complete-display-prefix on"

export MSYS=winsymlinks:nativestrict

export PS1="\[\033[35m\]\d \t \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$"

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
shopt -u histappend

shopt -s globstar

#export HISTCONTROL=erasedups
#export HISTCONTROL=ignoreboth:erasedups
export HISTCONTROL=ignoredups
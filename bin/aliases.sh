#!/bin/bash

# manage system alais here
alias ls='ls --color'
alias o="ls -ahl --color"
alias l="ls -al --color"
alias h="ls -ahl --color"

## pushd and popd
alias c=pushd
alias d=popd

alias t="tmux at"

# path
alias p="PROJECT_HOME"
alias cosmostpl="$PROJECT_HOME/web/src/templates/web/all/generic/skins/cosmos/html/component/"
alias cosmosjs="$PROJECT_HOME/web/src/webdev/js/intl/all/cosmos/plugins/"

# grep
alias rep="grep -nR"
alias rp="grep -nR"
alias fr="LC_ALL=C fgrep -nR"

# yroot
alias y="yroot"

alias loc="find . -name"

# generate r3output and restart apache
alias refresh="gsp2r3 ~/projects/web/src/r3output/web/zh_TW ; yinst restart yapache"

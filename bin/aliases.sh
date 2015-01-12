#!/bin/bash

# system program pathes
PHP=$(which php);
PHPUNIT=$(which phpunit);

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
alias cosmostest="$PROJECT_HOME/web/test/php/src/templates/web/all/generic/skins/cosmos/html/component"

# e.g., unit test/php/src/templates/web/all/generic/skins/cosmos/html/component/compJsToggle
alias unit="$PHP $PHPUNIT --colors --bootstrap test/php/dependency.inc --coverage-clover results/code-coverage/clover.xml --coverage-html results/code-coverage --log-junit results/unit-tests/log.xml"

# grep
alias rep="grep -nR"
alias rp="grep -nR"
alias fr="LC_ALL=C fgrep -nR"

# yroot
alias y="yroot"

alias loc="find . -name"

# generate r3output and restart apache
alias refresh="gsp2r3 ~/projects/web/src/r3output/web/zh_TW ; yinst restart yapache"

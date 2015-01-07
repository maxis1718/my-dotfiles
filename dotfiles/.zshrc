export DOTFILES_ROOT=$HOME/my-dotfiles
export SUBMODULE_ROOT=$DOTFILES_ROOT/submodules
#source "$DOTFILES_ROOT/dotfiles-conf.sh"

# Path to your oh-my-zsh configuration.
ZSH=$DOTFILES_ROOT/submodules/oh-my-zsh
#ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gentoo"

if [ "x$YROOT_NAME" != "x" ]; then
    ZSH_THEME="ys"
else
    #ZSH_THEME="robbyrussell"
    ZSH_THEME="gentoo"
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source $DOTFILES_ROOT/bin/aliases.sh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git pip python virtualenvwrapper)
plugins=(git pip python)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $DOTFILES_ROOT/bin/sh_basic.sh

export EDITOR="vim"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PYTHONPATH='/usr/local/lib/python2.7/site-packages'
export PROJECT_HOME="$HOME/projects"
#export PYTHONPATH="$PYTHONPATH:$PROJECT_HOME/pymodules:/tools/wordseg"

## For Yahoo! gsp2
# SOURCE_DIR: the parent path of `web`
export SOURCE_DIR=$PROJECT_HOME 
# R3HOME: set to be able to use `gsp2r3` command
export R3HOME=$SOURCE_DIR/web/r3

if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
  unfunction precmd
  unfunction preexec
  PS1='$ '
fi

# Change the theme of the directories
# available options: 
#   dircolors.256dark
#   dircolors.ansi-dark
#   dircolors.ansi-light
#   dircolors.ansi-universal 
DIRCOLORS_THEME="dircolors.256dark"
eval `dircolors $DOTFILES_ROOT/submodules/dircolors-solarized/$DIRCOLORS_THEME`


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
#
alias refresh="gsp2r3 web/zh_HK/skins/search/html_mobile_purple/main.inc; gsp2r3 web/zh_TW/skins/search/html_mobile_purple/main.inc; yinst restart yapache"

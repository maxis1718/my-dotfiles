my-dotfiles
===========

Install oh-my-zsh and related dotfiles

## Do first

Add key to `git.corp` and `github`

```
# copy the public key to github
cat ~/.ssh/id_rsa.pub
```

## Install

```
cd ~
git clone git@git.corp.yahoo.com:maxiskao/my-dotfiles.git
```

## Setup

```
./setup.sh
./submodules.sh
```

this will create symbolic links of dotfiles including `.bashrc`, `.gitconfig`, `.gitignore_global`, `.screenrc`, `.tmux.conf`, `.toprc`, `.vimrc` and `.zshrc`., and also install all submodules

```
# switch to zsh
chsh -s $(which zsh)

# reload zshrc
source ~/.zshrc
```

## File structure

```
├── bin
│   ├── aliases.sh
│   └── sh_basic.sh
├── dotfiles
│   ├── .bashrc
│   ├── .gitconfig
│   ├── .gitignore_global
│   ├── .screenrc
│   ├── .tmux.conf
│   ├── .toprc
│   ├── .vimrc
│   └── .zshrc
├── extra
│   ├── .xbindkeysrc
│   └── .Xdefaults
├── README.md
├── setup.sh
├── submodules
│   ├── dircolors-solarized
│   ├── oh-my-zsh
│   ├── powerline
│   ├── solarized
│   ├── tmux-colors-solarized
│   └── tmux-powerline
└── submodules.sh
```

- `/bin`
    - config alias in `aliases.sh`
    - config shell commands in `sh_basic.sh`
- `/dotfiles`
    - config all dotfiles for common applications
    
- `/extra`
    - put dotfiles of specific application here
    
- `/submodules`
    - git submodules of dependency files
    
    
    

#!/bin/bash

echo "Setting up the dotfiles..."
cp -r submodules/Vundle.vim dotfiles/.vim/bundle/.
find dotfiles -maxdepth 1 -name ".*" | cut -d / -f 2 | xargs -i ln -sfv $(pwd)/dotfiles/{} ~/{}
echo "Done"

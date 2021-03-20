#!/usr/bin/env bash

for f in */.[^.]*; do
    ln -snfv `pwd`/$f ~
done

mkdir -p ~/.config/nvim
ln -snfv `pwd`/nvim/init.vim ~/.config/nvim/init.vim

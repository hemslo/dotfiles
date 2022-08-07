#!/usr/bin/env bash

for f in */.[^.]*; do
    ln -snfv `pwd`/$f ~
done

mkdir -p ~/.config/nvim/lua/custom
ln -snfv `pwd`/nvim/chadrc.lua ~/.config/nvim/lua/custom/chadrc.lua

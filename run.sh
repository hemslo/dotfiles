#!/usr/bin/env bash

for f in */.[^.]*; do
    ln -sv `pwd`/$f ~
done

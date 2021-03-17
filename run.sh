#!/usr/bin/env bash

for f in */.[^.]*; do
    ln -snfv `pwd`/$f ~
done

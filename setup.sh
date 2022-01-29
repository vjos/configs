#!/bin/bash

# required configs
export configUsername=
export configEmail=

# defaults
export outputDir=~

# git
envsubst < git/.gitconfig > $outputDir/.gitconfig

# tmux 
cp -a tmux/. $outputDir 

# vim
cp -a vim/. $outputDir


#!/bin/bash

# Create symlink for dotfiles automatically
find ~/dotfiles -maxdepth 1 -name ".*" -not -path "/root/dotfiles/.git" | xargs -i basename {} | xargs -i ln -sf ~/dotfiles/{} ~/{}

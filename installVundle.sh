#!/bin/bash
mv ~/My.vim_cfg ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

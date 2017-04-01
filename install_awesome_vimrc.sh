#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

mkdir -p ~/.vim/colors
cp ~/.vim_runtime/sources_forked/peaksea/colors/peaksea.vim ~/.vim/colors/peaksea.vim

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

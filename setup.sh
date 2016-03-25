#!/bin/bash
sudo apt-get install stow
stow --stow --target ~ */
mkdir --parents ~/.vimundo
#echo "Warning: files in your home will get overwritten!"
#echo "Press ENTER or wait 10 seconds to continue"
#read -t 10 -p "Or press CTRL-C NOW to cancel"
#ln -s -T -n -f ~/dotfiles/bashrc ~/.bashrc
#ln -s -T -n -f ~/dotfiles/pythonstartup ~/.pythonstartup
#ln -s -T -n -f ~/dotfiles/vimrc ~/.vimrc
#ln -s -T -n -f ~/dotfiles/vim ~/.vim
#ln -s -T -n -f ~/dotfiles/vimgolf ~/.vimgolf
#ln -s -T -n -f ~/dotfiles/gdbinit ~/.gdbinit
#ln -s -T -n -f ~/dotfiles/pylintrc ~/.pylintrc
#ln -s -T -n -f ~/dotfiles/gitconfig ~/.gitconfig
#ln -s -T -n -f ~/dotfiles/xsessionrc ~/.xsessionrc
#mkdir ~/.vimundo

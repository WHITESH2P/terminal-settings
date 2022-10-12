#/usr/bin/bash

cp .vimrc ~/
cp .tmux.conf ~/
cat .bashrc >> ~/.bashrc

mkdir -p ~/.vim
cp -r ./verilog_systemverilog/* ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa

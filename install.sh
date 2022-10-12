#/usr/bin/bash

cp .vimrc ~/
cp .tmux.conf ~/
cat .bashrc >> ~/.bashrc

# system verilog syntax
mkdir -p ~/.vim
cp -r ./verilog_systemverilog/* ~/.vim

# vim-plug installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa

# miniconda installation
wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
chmod + ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda3
rm -rf ~/miniconda.sh
~/miniconda3/bin/conda init bash
source ~/.bashrc
conda config --set auto_activate_base false


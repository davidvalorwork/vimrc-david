# INSTALLING NEOVIM
apt install neovim
pip3 install --user neovim
mkdir -p ~/.config/nvim

# REMOVING OLD VIM FILES
rm -f ~/.config/nvim/init.vim
rm -f ~/.vimrc
rm -rf -f ~/.vim
rm -f ~/.zshrc

# NVIM CONFIG
cp files/init.vim ~/.config/nvim/init.vim

# COPYING NEW FILES
cp files/.vimrc ~/.vimrc
cp files/.zshrc ~/.zshrc
cp -rf files/.vim ~/.vim

# OPENING VIM
nvim ~/.vimrc

# INSTALLING NEOVIM
apt install zsh
apt install silversearcher-ag
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
apt install neovim
pip3 install --user neovim
mkdir -p ~/.config/nvim

# REMOVING OLD VIM FILES
rm -f ~/.config/nvim/init.vim
rm -f ~/.vimrc
rm -rf -f ~/.vim
rm -f ~/.zshrc
rm -f ~/.bashrc
rm -f ~/.tmux.conf.local
rm -f ~/.tmux.conf
rm -rf ~/.tmux
rm -f ~/.gitconfig

# NVIM CONFIG
cp files/init.vim ~/.config/nvim/init.vim

# COPYING NEW FILES
cp files/.vimrc ~/.vimrc
cp files/.zshrc ~/.zshrc
cp files/.gitconfig ~/.gitconfig
cp files/.bashrc ~/.bashrc
cp files/.tmux.conf.local ~/.tmux.conf.local
cp files/.tmux.conf ~/.tmux.conf
cp -r files/.tmux ~/.tmux
cp -r files/.vim ~/.vim

# OPENING VIM
nvim ~/.vimrc

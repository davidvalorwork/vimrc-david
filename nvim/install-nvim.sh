# REMOVING OLD VIM FILES
rm -f ~/.config/nvim/init.vim
rm -f ~/.vimrc
rm -rf -f ~/.vim
rm -f ~/.zshrc
rm -f ~/.tmux.conf.local
rm -f ~/.tmux.conf
rm -f ~/.gitconfig

# NVIM CONFIG
cp files/init.vim ~/.config/nvim/init.vim

# COPYING NEW FILES
cp files/.vimrc ~/.vimrc
cp files/.zshrc ~/.zshrc
cp files/.gitconfig ~/.gitconfig
cp files/.tmux.conf.local ~/.tmux.conf.local
cp files/.tmux.conf ~/.tmux.conf
cp -r files/.vim ~/.vim


# INSTALLING NEOVIM
cd ~
apt install python3 -y
apt install pip -y
apt install zsh -y
apt install peco -y
apt install silversearcher-ag -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
apt install neovim
pip3 install --user neovim
mkdir -p ~/.config/nvim

# OPENING VIM
nvim ~/.vimrc

# REMOVING OLD VIM FILES
rm -rf ~/.oh-my-zsh
rm -f ~/.config/nvim/init.vim
rm -f ~/.vimrc
rm -rf -f ~/.vim
rm -f ~/.tmux.conf.local
rm -f ~/.tmux.conf
rm -f ~/.gitconfig

# NVIM CONFIG
mkdir -p ~/.config/nvim
cp files/init.vim ~/.config/nvim/init.vim

# COPYING NEW FILES
cp files/.vimrc ~/.vimrc
cp files/.gitconfig ~/.gitconfig
cp files/.tmux.conf.local ~/.tmux.conf.local
cp files/.tmux.conf ~/.tmux.conf
cp -r files/.vim ~/.vim

# DRACULA TERMINAL
# apt-get install dconf-cli -y
# git clone https://github.com/dracula/gnome-terminal
# cd gnome-terminal
# ./install.sh

# INSTALLING NEOVIM
apt remove zsh -y
cd ~
apt-get install -y colorize
apt install nodejs -y
apt install curl -y
apt install npm -y
apt install python3 -y
apt install pip -y
apt install zsh -y
apt install peco -y
apt install silversearcher-ag -y


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
rm -f ~/.zshrc
cp files/.zshrc ~/


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

apt install neovim
pip3 install --user neovim

# OPENING VIM
nvim ~/.vimrc +'PlugInstall' +qa

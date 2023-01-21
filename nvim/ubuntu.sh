# REMOVING OLD VIM FILES
sudo rm -rf ~/.oh-my-zsh
sudo rm -f ~/.config/nvim/init.vim
sudo rm -f ~/.vimrc
sudo rm -rf -f ~/.vim
sudo rm -f ~/.tmux.conf.local
sudo rm -f ~/.tmux.conf
sudo rm -f ~/.gitconfig

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
sudo apt remove zsh -y
cd ~
sudo apt-get install -y colorize
sudo apt install exuberant-ctags -y
sudo apt install nodejs -y
sudo apt install curl -y
sudo apt install npm -y
sudo apt install python3 -y
sudo apt install pip -y
sudo apt install zsh -y
sudo apt install peco -y
sudo apt install silversearcher-ag -y


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm -f ~/.zshrc
cp files/.zshrc ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install neovim
pip3 install --user neovim
sudo pip3 install --user neovim
pip install --user pynvim --upgrade
sudo pip install --user pynvim --upgrade
# OPENING VIM
sudo nvim ~/.vimrc +'PlugInstall' +qa
sudo nvim ~/.vimrc +'CocInstall coc-snippets' +qa
sudo nvim ~/.vimrc +'CocInstall prettier' +qa
sleep 2
mv ~/projects/vimrc-david/.zshrc ~
mv ~/notas ~/projects/notas
zsh

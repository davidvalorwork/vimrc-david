
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
# sudo apt-get install dconf-cli -y
# git clone https://github.com/dracula/gnome-terminal
# cd gnome-terminal
# ./install.sh

# INSTALLING NEOVIM
cd ~
sudo pacman -S  colorize --noconfirm
sudo pacman -S nodejs --noconfirm
sudo pacman -S curl --noconfirm
sudo pacman -S npm --noconfirm
sudo pacman -S python3 --noconfirm
sudo pacman -S pip --noconfirm
sudo pacman -S zsh --noconfirm
sudo pacman -S peco --noconfirm
sudo pacman -S the_silver_searcher --noconfirm
sudo pacman -S neovim --noconfirm


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
rm -f ~/.zshrc
cp files/.zshrc ~


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip3 install --user neovim

# OPENING VIM
nvim ~/.vimrc +'PlugInstall' +qa
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

# DELETE OLD CONFIGS
rm -rf files

# COPY NEW CONFIG
mkdir files
cp ~/.gitconfig ./files
cp ~/.vimrc ./files
cp ~/.zshrc ./files
cp ~/.config/nvim/init.vim ./files
cp ~/.bashrc ./files
cp ~/.tmux.conf.local ./files
cp ~/.tmux.conf ./files
cp -rf ~/.tmux ./files
cp -r ~/.vim ./files

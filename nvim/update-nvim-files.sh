# DELETE OLD CONFIGS
rm -rf files

# COPY NEW CONFIG
mkdir files
cp ~/.gitconfig ./files
cp ~/.vimrc ./files
cp ~/.zshrc ./files
cp ~/.config/nvim/init.vim ./files
cp -r ~/.vim ./files

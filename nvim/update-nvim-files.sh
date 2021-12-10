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
cp -r ~/.oh-my-zsh ./files
rm -rf ./files/.oh-my-zsh/.git
cp -r ~/.tmux ./files
rm -rf ./files/.tmux/.git
cp -r ~/.vim ./files

# DELETE OLD CONFIGS
echo [UpdateNvim] removing files
rm -rf files

# COPY NEW CONFIG
mkdir files
echo [UpdateNvim] copying ~/.gitconfig ./files
cp ~/.gitconfig ./files
echo [UpdateNvim] copying ~/.vimrc ./files
cp ~/.vimrc ./files
echo [UpdateNvim] copying ~/.zshrc ./files
cp ~/.zshrc ./files
echo [UpdateNvim] copying ~/.config/nvim/init.vim ./files
cp ~/.config/nvim/init.vim ./files
echo [UpdateNvim] copying ~/.bashrc ./files
cp ~/.bashrc ./files
echo [UpdateNvim] copying ~/.tmux.conf.local ./files
cp ~/.tmux.conf.local ./files
echo [UpdateNvim] copying ~/.tmux.conf ./files
cp ~/.tmux.conf ./files
echo [UpdateNvim] copying ~/.oh-my-zsh ./files
cp -r ~/.oh-my-zsh ./files
echo [UpdateNvim] removing ./files/.oh-my-zsh/.git
rm -rf ./files/.oh-my-zsh/.git
echo [UpdateNvim] copying ~/.tmux ./files
cp -r ~/.tmux ./files
echo [UpdateNvim] copying ~/zsh-syntax-highlighting ./files
cp -r ~/zsh-syntax-highlighting ./files
rm -rf ./zsh-syntax-highlighting/.git
echo [UpdateNvim] copying ~/zsh ./files
cp -r ~/zsh ./files
rm -rf ./zsh/.git
echo [UpdateNvim] removing ./files/.tmux/.git
rm -rf ./files/.tmux/.git
echo [UpdateNvim] copying cp -r ~/.vim ./files
cp -r ~/.vim ./files

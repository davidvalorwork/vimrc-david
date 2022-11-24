echo Select an option
echo 1. Update my zshrc in the repository.
echo 2. Update my zshrc locally.
echo 
echo
read option
if [[ $option == 1 ]]
then
	echo Updating zshrc
 	rm -rf .zshrc
 	rm -rf ./nvim/files/.vimrc
 	rm -rf ./nvim/files/maps.vim
	cp ~/.zshrc ./
	cp ~/.vimrc ./nvim/files/
 	cp ~/.vim/maps.vim ./nvim/files/.vim
 	cp ~/.vim/plugins.vim ./nvim/files/.vim
 	cp ./nvim/files/.vim/plugin-config.vim ~/.vim
	git add .
	git commit -m "Adding new zsh"
	git pull
	git push
fi
if [[ $option == 2 ]]
then
	echo Replacing zsrhc
	cd ~/projects/vimrc-david
	git pull
 	rm -rf ~/.zshrc
 	rm -rf ~/.vimrc
 	rm -rf ~/.vim/maps.vim
	cp ./.zshrc ~
	cp ./nvim/files/.vimrc ~
 	cp ./nvim/files/.vim/maps.vim ~/.vim
 	cp ./nvim/files/.vim/plugins.vim ~/.vim
 	cp ./nvim/files/.vim/plugin-config.vim ~/.vim
fi

echo Select an option
echo 1. Update my zshrc in the repository.
echo 2. Update my zshrc locally.
echo 
echo
read option
if [[ $option == 1 ]]
then
	echo Updating zshrc
	cp ~/.zshrc ./
	git add .
	git commit -m "Adding new zsh"
	git pull
	git push
fi
if [[ $option == 2 ]]
then
	echo Replacing zsrhc
	# rm -rf ~/.zshrc
	# cp ./.zshrc ~
fi

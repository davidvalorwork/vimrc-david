echo Seek out pain and fall in love with suffering
git pull
cd ~/vimrc-david
rm .vimrc
cp ../.vimrc .vimrc
git add .
git config credential.helper 'store --file ~/.vimrccredential'
git commit -am "Update"
git push

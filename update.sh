echo Seek out pain and fall in love with suffering
git remote set-url origin https://davidvalorwork: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@github.com/davidvalorwork/vimrc-david.git
git pull
cd ~/vimrc-david
rm .vimrc
cp ../.vimrc .vimrc
git add .
git config credential.helper 'store --file ~/.vimrccredential'
git commit -am "Update"
git push

cd ~

curl https://creaticoding.github.io/creco-manual/scripts/gitconfig -o .gitconfig

git config --global user.name 정석호
git config --global user.email seokho.jeong@toss.im
git config --global commit.gpgsign true
git config --global pull.ff only
git config --global user.signingkey $(gpg --list-secret-keys --keyid-format LONG | grep sec | awk '{ print $2 }' | cut -d "/" -f 2)
git config --global gpg.program /usr/local/MacGPG2/bin/gpg2

cat ~/.gitconfig

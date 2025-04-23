cd ~

curl https://creaticoding.github.io/creco-manual/scripts/gitconfig -o .gitconfig

git config --global user.name 정석호
git config --global user.email nodejsdeveloper@kakao.com
git config --global commit.gpgsign true
git config --global pull.ff only

cat ~/.gitconfig

echo "" >> .ssh/config
echo "Host divopsor" >> .ssh/config
echo "  Hostname github.com" >> .ssh/config
echo "  IdentityFile ~/.ssh/id_rsa-divopsor" >> .ssh/config
echo "  IdentitiesOnly yes" >> .ssh/config

echo "" >> .ssh/config
echo "Host creaticoding" >> .ssh/config
echo "  Hostname github.com" >> .ssh/config
echo "  IdentityFile ~/.ssh/id_rsa-creaticoding" >> .ssh/config
echo "  IdentitiesOnly yes" >> .ssh/config


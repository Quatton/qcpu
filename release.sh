./install.sh
git checkout master
git push
git switch stable
git pull
git merge master
git push
git switch -
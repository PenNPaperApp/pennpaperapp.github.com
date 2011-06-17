rm -rf ../output
git checkout source
nanoc3 co
rm -rf .sass-cache
cp -R output ../
git checkout master
git pull -f
rm -rf ./*
cp -R ../output/* .
git add .
git commit -a -m "Updated site on `date`"
git push origin master
git checkout source
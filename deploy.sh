git checkout source
bundle exec /usr/local/bin/jekyll build
git add .
git commit -m "update source"
cp -r _site/ /tmp/
git checkout gh-pages
rm -r ./*
cp -r /tmp/_site/* ./
git add .
git commit -m "deploy blog"
git push origin gh-pages
git checkout source
echo "deploy succeed"
git push origin source
echo "push source"

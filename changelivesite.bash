git clone https://github.com/ab-itteam/ab-itteam.github.io.git destination
cd destination/
git rm -r *
cd ./..
git clone https://github.com/ab-itteam/websiteabit.git toputlive
cd toputlive
git checkout gh-pages
cd ./..
rm -r ./toputlive/.git
cp -r ./toputlive/* destination
cd destination
git add *
git commit -m "new deploy of site"
git push
cd ./..
rm -r destination
rm -r toputlive

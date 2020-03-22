#!/bin/sh -l
# Exit immediately if a pipeline returns a non-zero status.
set -e

echo "🚀 Starting build action"

mkdir /var/www && cd /var/www

curl https://codeload.github.com/LASG-GAMIL/blog/zip/master -o blog.zip

unzip blog.zip && rm blog.zip

echo "⚡️ Installing dependencies..."

cd blog-master
bundle install

echo "🏋️ Building website..."

JEKYLL_ENV=production bundle exec jekyll build
echo "Jekyll build done"

echo "☁️ Publishing website"

cd _site
rm -f README.md

git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .
git commit -m "GitHub Actions - $(date)"
REPO="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git push --force $REPO master:gh-pages

rm -rf .git
cd ../..
rm -rf blog-master

echo "🎉 New version deployed 🎊"
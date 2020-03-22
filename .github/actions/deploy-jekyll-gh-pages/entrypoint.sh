#!/bin/sh -l
# Exit immediately if a pipeline returns a non-zero status.
set -e

REPO="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

echo "🚀 Starting build action"

mkdir /var/www && cd /var/www

git clone $REPO repo

echo "⚡️ Installing dependencies..."

cd repo
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
git push --force $REPO master:gh-pages

rm -rf .git
cd ../..
rm -rf repo

echo "🎉 New version deployed 🎊"
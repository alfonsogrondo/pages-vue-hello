#!/usr/bin/env sh
# abort on errors
set -e
cd hello-world
# build
yarn build

# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:alfonsogrondo/pages-vue-hello.git main:gh-pages
cd -
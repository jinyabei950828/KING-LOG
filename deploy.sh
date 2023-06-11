#!/usr/bin/env sh

set -e

npm run docs:build

cd doc/.vitepress/dist

const msg = "github actions 自动部署"
git init
git add -A
git commit -m "${msg}"
git push -f 


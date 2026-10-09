#!/bin/sh
# Builds the ordem.sh site into site/dist. Vercel runs it from site/ (the project's Root Directory).
# install.sh and the brand files are copied from the repo, so ordem.sh always serves what's on main.
set -eu
cd "$(dirname "$0")"

rm -rf dist
mkdir -p dist
cp index.html og.png dist/
cp ../install.sh dist/install.sh
cp ../public/favicon.svg ../public/favicon.ico ../public/apple-touch-icon.png ../public/icon.png ../public/icon.svg dist/
cp -R ../public/brand dist/brand

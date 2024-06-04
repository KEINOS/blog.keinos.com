#!/bin/bash

set -eux

echo "* Pulling changes from submodules ..."

git submodule update --remote

echo "* Add changes ..."
git add .

echo "* Commit changes ..."
git commit -m "${1:-update docs}"

echo "* Push changes ..."
git push

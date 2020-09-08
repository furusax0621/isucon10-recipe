#!/bin/bash

set -xue

DEST="$1"
tar czvf recipe.tar.gz --exclude recipe.tar.gz --exclude .git --exclude sync.sh .
rsync -a ./recipe.tar.gz "$DEST":/tmp/

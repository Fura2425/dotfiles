#!/bin/bash

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

for f in .??*; do
	[ "$f" = ".DS_Store" ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done

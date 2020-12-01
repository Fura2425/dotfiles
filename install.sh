#!/bin/bash
set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

echo 'Paste the Symbolic link...'
for f in .??*; do
	[ "$f" = ".DS_Store" ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done

ln -snfv ~/dotfiles/nvim/ ~/.config/

echo 'Complete!!'

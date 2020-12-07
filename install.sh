#!/bin/bash
set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

echo 'Paste the Symbolic link...'
for f in .??*; do
	[ "$f" = ".DS_Store" ] && continue
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitignore" ] && continue

	ln -snfv ${PWD}/"$f" ~/
done

ln -sf ~/dotfiles/nvim/ ~/.config/
ln -sf ~/dotfiles/fish/ ~/.config/
ln -sf ~/dotfiles/starship.toml ~/.config/
ln -sf ~/dotfiles/bat/ ~/.config/

echo 'Complete!!'

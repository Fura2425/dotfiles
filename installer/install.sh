#!/bin/bash
set -eu

cd $HOME/dotfiles

echo 'Paste the Symbolic link...'
for f in .??*; do
	[ "$f" = ".DS_Store" ] && continue
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitignore" ] && continue

	ln -snfv ${PWD}/"$f" ~/
done

ln -sfv ~/dotfiles/nvim/ ~/.config/
ln -sfv ~/dotfiles/fish/ ~/.config/
ln -sfv ~/dotfiles/starship.toml ~/.config/
ln -sfv ~/dotfiles/templates/bat/ ~/.config/

echo 'Complete!!'

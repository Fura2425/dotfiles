#export PS1="╭─\u@\h:\W \n╰─|ω･)ﾁﾗ ≺"
	if [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
	if [ -f /etc/bash_completion.d/git-prompt ]; then
		export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]>\[\033[00m\] '
	else
		export PS1='\033[01;39m\]╭─\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;39m\]╰─|ω･)ﾁﾗ ≺\[\033[00m\] '
	fi


# FB c6c8d1
# BG 161821

# shell設定
# set -o vi # shellキーバインドをvi風に設定
# bind '"jj": vi-movement-mode' # Escを jj にキーバインド


# エイリアス
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -alFG'

alias dot='cd ~/dotfiles'

alias wp='cd ~/workspace/programming'
alias wpr='cd ~/workspace/programming/rust'
alias wpc='cd ~/workspace/programming/c'
alias wpa='cd ~/workspace/programming/assembly'
alias wpb='cd ~/workspace/programming/binary'

alias wpj='cd ~/workspace/projects'

alias n='nvim'
alias j='z'
alias lg='lazygit'

alias silicon='silicon --shadow-blur-radius 15 --background "#5550" --font "Ricty"'

# Ghidra
alias ghidra='open /Applications/ghidra_9.1.1_PUBLIC/ghidraRun'


function llvm (){
	export PATH="/usr/local/opt/llvm/bin:$PATH"
	export LDFLAGS="-L/usr/local/opt/llvm/lib"
	export CPPFLAGS="-I/usr/local/opt/llvm/include"
	unset -f llvm
}

# trash
if type trash-put &> /dev/null
then
    alias rm=trash-put
fi

# zコマンド
source ~/z/z.sh

# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/config/bat.conf"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 60% --reverse --border'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


# wakatime
source ~/bash-wakatime/bash-wakatime.sh

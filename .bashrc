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
alias ls='ls -FG'
alias la='ls -alFG'
alias j=z
alias n=nvim


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

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 60% --reverse --border'
export FZF_ALT_C_OPTS="--select-1 --exit-0"
#export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# zコマンド
source ~/z/z.sh

# wakatime
source ~/bash-wakatime/bash-wakatime.sh



# Ghidra
alias ghidra='open /Applications/ghidra_9.1.1_PUBLIC/ghidraRun'

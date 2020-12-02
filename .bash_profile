# 何のためのやつか忘れたやつ
# export PATH=~/jdk-11.0.2/bin:$PATH

export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH'

alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew'


# rust
export PATH="$HOME/.cargo/bin:$PATH"
# rust sdl
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"


# python
export PATH=/Library/Frameworks/Python.framework/Versions/3.9/bin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# .bash_profile内で.bashrcを読み込む
if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi



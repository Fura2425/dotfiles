# 何のためのやつか忘れたやつ
# export PATH=~/jdk-11.0.2/bin:$PATH


alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew'


# rust
export PATH="$HOME/.cargo/bin:$PATH"
# rust sdl
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"


# pyenv 必要パス
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# python
export PATH="$HOME/.pyenv/shims:$PATH"



# .bash_profile内で.bashrcを読み込む
if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi



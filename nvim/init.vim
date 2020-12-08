let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3.9'
let g:wakatime_PythonBinary = '/usr/bin/python'  " (Default: 'python')
""""""""""""""""""""""""""""""""""
" 基本設定
""""""""""""""""""""""""""""""""""
set encoding=utf-8
set number "行番号の表示
set relativenumber "行番号相対表示
set cursorline " カレント行の強調表示
set title "編集中のファイル名を表示
set showmatch "括弧に対応する括弧を強調表示
set matchpairs=(:),{:},[:],<:> "括弧対応判定設定
set backspace=indent,eol,start "バックスペースを機能させる
set clipboard+=unnamed "クリップボード連携を有効化
set splitright "分割ウィンドウは右に生成
set updatetime=100 "100msでswapファイルに書き込み




""""""""""""""""""""""""""""""""""
" 行＆移動＆インデント
""""""""""""""""""""""""""""""""""
"行頭と行末から行を跨ぐ
"set showbreak=↪
set whichwrap +=h
set whichwrap +=l
set smartindent "自動的にインデントを調整
set expandtab "インデントをスペースとして認識
set tabstop=4 "インデント数の設定
set softtabstop=4 "<Tab>を押したときのインデント数を設定
set shiftwidth=4  "ノーマル・インサートでのコマンドによるインデント数を設定




""""""""""""""""""""""""""""""""""
" 検索設定
""""""""""""""""""""""""""""""""""
set ignorecase "大文字/小文字の区別なく検索
set smartcase "検索文字列に大文字が含まれている場合は区別して検索
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索結果をハイライト表示



""""""""""""""""""""""""""""""""""
" キーバインド
""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>" "Leaderキーをスペースキーに変更


" 行移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" ページ移動
noremap <C-n> <C-f>
noremap <C-p> <C-b>

" ウィンドウ移動
noremap  <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap<C-k> <C-w>k
noremap <C-l> <C-w>l

" その他
noremap <silent> <Esc><Esc> :nohlsearch<CR> " D-escによるハイライト消去
noremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
noremap <silent> == gg=G :<C-u> FixWhitespace <CR> " インデント整形＆余分空白削除


inoremap <silent> <C-f> <ESC>

" インサートモードでのカーソル移動
inoremap <C-j> <C-o>gj
inoremap <C-k> <C-o>gk
inoremap <C-l> <right>



"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" If you don't have dein.vim, drop it from github
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" Required:
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	" Let dein manage dein
	" Required:
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	" Load TOML
	let s:toml_dir = expand('~/.config/nvim')
	let s:toml = s:toml_dir . '/dein.toml'
	let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

	" Read TOML and cache it
	call dein#load_toml(s:toml,         {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	" Required:
	call dein#end()
	call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts----------------------------------------------------------

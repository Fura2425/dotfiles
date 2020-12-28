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




""""""""""""""""""""""""""""""""""
" 行＆移動＆インデント
""""""""""""""""""""""""""""""""""
"行頭と行末から行を跨ぐ
"set showbreak=↪
set whichwrap +=h
set whichwrap +=l
set smartindent "自動的にインデントを調整
set noexpandtab "インデントをtabをして認識
set tabstop=4 "インデント数の設定
set softtabstop=4 "<Tab>を押したときのインデント数を設定
set shiftwidth=4 "ノーマル・インサートでのコマンドによるインデント数を設定




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

" 行移動
nnoremap j gj
nnoremap k gk
nnoremap gk k
nnoremap gj j

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


inoremap <silent> <C-f> <ESC>

" インサートモードでのカーソル移動
inoremap <C-k> <up>
inoremap <C-l> <right>

inoremap <C-j> <Esc>a<CR>

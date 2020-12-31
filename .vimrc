""""""""""""""""""""""""""""""""""
" 基本設定
""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
let $LANG = 'en'
set number "行番号の表示
set relativenumber "行番号相対表示
set title "編集中のファイル名を表示
set showmatch "括弧に対応する括弧を強調表示
set matchpairs=(:),{:},[:],<:> "括弧対応判定設定
set backspace=indent,eol,start "バックスペースを機能させる
set clipboard+=unnamed "クリップボード連携を有効化
set splitright "分割ウィンドウは右に生成
set updatetime=100 "100msでswapファイルに書き込み


"""""""""""""""""""""""""""""""""
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

"" ノーマルモード

" 行移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" スクロール移動
noremap <C-n> <C-f>
noremap <C-p> <C-b>

" ウィンドウ移動
noremap  <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap<C-k> <C-w>k
noremap <C-l> <C-w>l

" ウィンドウ分割
nmap ss :new<Return><C-w>w
nmap sv :vnew<Return>

" タブ
nmap te :tabedit

" その他
noremap <silent> <Esc><Esc> :nohlsearch<CR> " D-escによるハイライト消去
noremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>


"" インサートモード
inoremap <silent> <C-f> <Esc>

" インサートモードでのカーソル移動
inoremap <C-k> <C-o>gk
inoremap <C-l> <right>

inoremap <C-j> <Esc>a<CR>
"inoremap <C-j> <Down>



""""""""""""""""""""""""""""""""""
" ステータスラインの表示
""""""""""""""""""""""""""""""""""
set laststatus=2
"set statusline=%<     " 行が長すぎるときに切り詰める位置
"set statusline+=[%n]  " バッファ番号
"set statusline+=%m    " %m 修正フラグ
"set statusline+=%r    " %r 読み込み専用フラグ
"set statusline+=%h    " %h ヘルプバッファフラグ
"set statusline+=%w    " %w プレビューウィンドウフラグ
"set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
set statusline+=%y    " バッファ内のファイルのタイプ
set statusline+=\     " 空白スペース
"if winwidth(0) >= 130
"    set statusline+=%F    " バッファ内のファイルのフルパス
"else
"    set statusline+=%t    " ファイル名のみ
"endif
set statusline+=%t    " ファイル名のみ
set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
set statusline+=\ \   " 空白スペース2個
set statusline+=%1l   " 何行目にカーソルがあるか
set statusline+=/
set statusline+=%L    " バッファ内の総行数
set statusline+=,
set statusline+=%c    " 何列目にカーソルがあるか
set statusline+=%V    " 画面上の何列目にカーソルがあるか
set statusline+=\ \   " 空白スペース2個
set statusline+=%P    " ファイル内の何％の位置にあるか


""""""""""""""""""""""""""""""""""
" ハイライト
""""""""""""""""""""""""""""""""""
highlight Pmenu ctermfg=250 ctermbg=235 guibg=#262626
highlight PmenuSel ctermfg=0 ctermbg=13 guibg=#ff00ff


"自動コメントアウト無効化
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o

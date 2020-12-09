nnoremap <silent> <Leader>rc :<C-u> QuickRun <CR>
nnoremap <Leader>q :<C-u>bw! \[quickrun\ output\]<CR>

""""""""""""""""""""""""""""""""""
"QuickRunQuit
augroup quitrunQuit
    autocmd!
    autocmd QuitPre * if (bufnr('\[quickrun\ output\]') != -1) | :bw! \[quickrun\ output\] | endif
augroup END
""""""""""""""""""""""""""""""""""

let g:quickrun_config = {
            \"_" : {
            \	'runner' : 'vimproc',
            \	'exec': "%c %o %s %a",
            \	'runner/vimproc/updatetime' : 60,
            \	'outputter/buffer/split' : ':botright 8',
            \	'outputter/buffer/close_on_empty' : 1,
            \	'hook/time/enable' : 1,
            \},
            \'c' : {
            \	'command' : '/usr/local/Cellar/llvm/11.0.0/bin/clang',
            \	'hook/sweep/files': '%S:p:r',
            \},
            \'cpp' : {
            \	'command' : '/usr/local/Cellar/llvm/11.0.0/bin/clang++',
            \	'hook/sweep/files': '%S:p:r',
            \},
            \'rust' : {
            \	'command' : 'rustc',
            \	'exec': ['%c %o %s -o %s:p:r', '%s:p:r %a'],
            \	'tempfile': '%{fnamemodify(tempname(), ":r")}.rs',
            \	'hook/shebang/enable': 0,
            \	'hook/sweep/files': '%S:p:r',
            \},
            \'cargo' : {
            \	'command' : 'cargo',
            \	'exec': '%c run %o',
            \	'hook/shebang/enable': 0,
            \},
            \'python' : {
            \	'exec' : 'python3',
            \	'hook/sweep/files': '%S:p:r',
            \},
            \ 'go': {
            \   'command': 'go',
            \   'exec': '%c run %s:p:t %a',
            \   'tempfile': '%{tempname()}.go',
            \   'hook/output_encode/encoding': 'utf-8',
            \   'hook/cd/directory': '%S:p:h',
            \ },
            \'html' : {
            \	'command' : 'open',
            \	'exec' : '%c -a /Applications/Google\ Chrome.app %s',
            \	'hook/time/enable' : 0,
            \},
            \'markdown' : {
            \	'runner' : 'shell',
            \	'outputter' : 'null',
            \	'command' : ':PrevimOpen',
            \	'exec' : '%c',
            \	'hook/time/enable' : 0,
            \},
            \}

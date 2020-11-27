set noshowmode
set laststatus=2
let g:lightline = {
			\	'colorscheme': 'iceberg',
			\	}
let g:lightline.inactive = {
			\ 'left': [ [ 'filename' ] ],
			\ 'right': [ [ 'lineinfo' ],
			\            [ 'percent' ] , ['denite'] ]}
let g:lightline.component_function = {}
let g:lightline.component_function['filename'] = 'LLfilename'
let g:lightline.component_function['denite'] = 'LLDenite'

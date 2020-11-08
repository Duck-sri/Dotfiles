" these are my status line plugins

set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme' : 'onedark',
	\ 'active' : {
	\	'right' : [ [ 'lineinfo' ],
	\				[ 'percent' ],
	\				[ 'filetype' ] ]
	\	},
	\ }

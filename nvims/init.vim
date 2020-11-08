"   my inital vim config in the popos!
"
"   and this is already doing the auto commenting work for me
"
"   try to use the <Alt> functionality to get easy moving back-forth in normal
"   and insert mode
syntax on

" my intial settings
set tabstop=2 softtabstop=2
set shiftwidth=2
set ai
set nu rnu
set nowrap
set smartcase
set incsearch
set ruler
set noerrorbells
set noswapfile
set foldmethod=indent
set foldlevel=99
set splitright

" here are the remaps
nmap /asdf :w
nmap /qwer :wq
nmap /zxcv :q!
imap /asdf <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <C-l> <Esc>:tabnext<CR>
nmap <C-h> <Esc>:tabprevious<CR>
nmap <C-/> <Esc>:NERDTreeToggle<CR>
nmap <C-w>t :vert term<CR><C-w><C-w>:vertical resize 85<CR><C-w><C-w>export PS1=$PS2<Cr>clear<Cr>
nmap <C-n>n <Esc>:tabnew 
nmap <C-A-h>h :Startify<Cr>
nmap <C-A-h>H <Esc>:tabnew<CR><Esc>:Startify<Cr>
nmap <C-w>c <C-w><C-w>exit<Cr>
" ctrl+super+w to swap the left and right in a vertical split
" for the installing vim-plug
" sh -c 'curl -fLo "/home/$USER/.config/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" specific for python
au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
		\ nnoremap <space> za

"	My plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
" for syntax highlighting
Plug 'sheerun/vim-polyglot'
" for startify
Plug 'mhinz/vim-startify'
" for nerdtree
Plug 'preservim/nerdtree'
" for code completion
"Plug 'neoclide/coc.nvim', {'branch':'release'}
								" installed languages
								" coc-jedi    --> python
								" coc-ccls    --> c++
								" coc-html    --> html
								" coc-tsserver --> javascript and typescript
								" coc-pairs   --> brackets completion 
call plug#end()
"colorscheme onedark
" here I put all the source for conifgs

" for status line
"source $HOME/.config/nvim/configs/statusline.vim
" for code compleition and defenition and documentation
"source $HOME/.config/nvim/configs/coc.vim

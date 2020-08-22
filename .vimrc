" this is my first time experimenting wit git
" And this is my initial config for vim
"   ___^__^__
"   |  .  . |
"   |    |  |
"   |____-_ |
"   |\
"   |  \
"   |    \_
"

" inital settings 
syntax on 
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set nowrap
set nu rnu
set inclsearch

" my keymaps   
" remember to reduce the no.of keymaps and plugins,
" use <Alt> my get to normal mode faster or just for some small tasks
imap <C-i><C-i> :w<CR>
nmap <C-n> :tabnew<CR>:e 
nmap <C-e> :tabclose<CR>
nmap <C-left> :tabprevious<CR>
nmap <C-right> :tabnext<CR>


" UI configs        -- uncomment if you have the required plugins are installed
" set colorscheme onedark

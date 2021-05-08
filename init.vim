syntax on

set nu relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set cursorline
set laststatus=2
set noshowmode
set scrolloff=5
set nowrap
set nowb nobackup noswapfile
set undodir=~/.vim/undodir undofile

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

colorscheme gruvbox
set t_Co=256
set background=dark

let g:lightline = {
          \ 'colorscheme': 'gruvbox',
          \ }

inoremap jk <ESC>   

autocmd filetype cpp nnoremap <F5> :term ./%:r<CR> i
autocmd filetype cpp nnoremap <F12> :w<CR> :term g++ % -o %:r && echo Program compiled. && ./%:r<CR> i

set number
set relativenumber
set hlsearch
set splitbelow
set splitright

execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
syntax on
colorscheme onedark


" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 

" Ale rubocop path
let g:ale_ruby_rubocop_options=" --config /home/juanlb/Snappler/rubocop.yml"
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Tab switching
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

let NERDTreeShowHidden=1
let g:ctrlp_show_hidden = 1

:set autoindent
:set smartindent

set clipboard=unnamed
:imap jj <Esc>

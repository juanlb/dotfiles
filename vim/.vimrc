" Intall Vim-Plug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-rails'
Plug 'lifepillar/vim-mucomplete'
Plug 'mkitt/tabline.vim'
Plug 'slim-template/vim-slim'
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-fugitive'


call plug#end()

" -- Configurations --

" Enable syntax highlighting
syntax on

" Don't wrap long lines
set nowrap

" Set Highlight
set hlsearch

" Use 2 spaces for tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

" Automatically remove all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Set default colorscheme to solarized
set background=dark
silent! colorscheme solarized8_high


" Enable line numbers and don't make them any wider than necessary
set number relativenumber numberwidth=2

" -- Mappings --

" Toggle NERDTreeToggle
nmap <Leader>g :NERDTreeToggle<CR>

" Switch between panes
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

" Autocomplete MUcomplete
set completeopt+=menuone,noselect
let g:mucomplete#enable_auto_at_startup = 1


" Map jj to be more handly
imap jj <Esc>


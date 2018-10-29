let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
execute pathogen#infect()

set relativenumber
set nocompatible
syntax on
filetype plugin indent on

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l<Esc>

autocmd FileType html inoremap ;i <i> </i> <Space><++><Esc>FiT>i
autocmd FileType html inoremap ;b <b> </b> <Space><++><Esc>FbT>i
autocmd FileType html inoremap ;1 <h1> </h1> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;2 <h2> </h2> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;3 <h3> </h3> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;4 <h4> </h4> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;5 <h5> </h5> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;6 <h6> </h6> <Space><++><Esc>FhT>i
autocmd FileType html inoremap ;p <p> </p> <Space><++><Esc>FpT>i

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

set laststatus=2 
let g:lightline = {
      \'colorscheme': 'one',
      \}

nnoremap <C-n> :NERDTreeToggle<CR>

set background=dark
colorscheme material-theme

set clipboard=unnamedplus

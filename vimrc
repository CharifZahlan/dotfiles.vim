set relativenumber
set hidden
set history=100

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>

execute pathogen#infect()
filetype plugin indent on
syntax on

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

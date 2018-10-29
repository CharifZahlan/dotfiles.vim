set relativenumber
execute pathogen#infect()
syntax on
filetype plugin indent on

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

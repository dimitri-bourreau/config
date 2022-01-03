" Install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"=======================================
"=============== PLUGINS ===============
"=======================================
call plug#begin()

"-- Autoclose brackets & such --
Plug 'Townk/vim-autoclose'

"-- Fuzzy search --
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"-- Emmet --
Plug 'mattn/emmet-vim'

"-- File tree --
"-- Plug 'preservim/nerdtree'

"-- Theme --
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'

"-- Polyglot --
Plug 'sheerun/vim-polyglot'

call plug#end()

"=======================================
"=============== OPTIONS ===============
"=======================================
"---------- Interface ----------
set nocompatible
set number
set updatetime=50
set tabstop=2 softtabstop=2
set shiftwidth=2
set clipboard=unnamed
set termguicolors
syntax on
set re=0
set scrolloff=8
set relativenumber
set expandtab
set smartindent
set termguicolors

"--------- Theme ---------
" colorscheme onehalfdark

"---------- Emmet ----------
let g:user_emmet_mode='a'

"---------- Maping ----------
let mapleader = ","
nmap <Leader>f :FZF <CR>
nmap <Leader>g :GFiles <CR>
nmap <Leader>a :Ag <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q' ciw''<Esc>P
nnoremap <leader>q" ciw""<Esc>P
nnoremap <leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
nnoremap <leader>n :noh<CR>

"--------- Commands ---------
command E Ex
command A Ag
"-- Ag needs brew install the_silver_searcher

"-------- Auto commands -----
autocmd BufWritePost * call system("ctags -R")
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>

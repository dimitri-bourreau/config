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
set tabstop=4 softtabstop=4
set shiftwidth=4
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
"-- colorscheme onehalflight

"---------- Emmet ----------
let g:user_emmet_mode='a'

"---------- File tree ----------
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"---------- Maping ----------
let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>
nmap <silent> <Leader>e :lopen
nmap <Leader>f :FZF <CR>
nmap <Leader>g :GFiles <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"--------- Commands ---------
command E Ex

set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors

call plug#begin(stdpath('data') . '/plugged')
"-- Telescope (fuzzyfind) --
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"-- Syntax highlighting and git integration --
Plug 'sharkdp/bat'
Plug 'nvim-treesitter/nvim-treesitter'
"-- Find entries --
Plug 'sharkdp/fd'
"-- Search in current dir regex--
Plug 'BurntSushi/ripgrep'
"-- Theme --
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"---------------- THEME -----------------"
syntax on
set t_Co=256
set cursorline
let g:airline_theme='onehalflight'

"----------- PERSONAL MAPING ------------"
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

"-------- TELESCOPE (FUZZYFIND) ---------"
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

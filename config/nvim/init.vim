syntax on


set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set number
set relativenumber

set lbr
set nolist
set wrap


set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors

set cmdheight=2

set updatetime=500

set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Language Picker uppers
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'sheerun/vim-polyglot'

" Fuzzy
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Undo history
Plug 'mbbill/undotree'

" Git
Plug 'tpope/vim-fugitive'

" Smart Starting
Plug 'mhinz/vim-startify'

" Motion
Plug 'justinmk/vim-sneak'

call plug#end()

set background=dark
colorscheme gruvbox


let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1


" GO TO COC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gD <Plug>(coc-declaration)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)

" Fuzzy Files
nnoremap <C-p> :GFiles <CR>
nnoremap <Leader>pf :Files<CR>

" Window Moving
nnoremap h :wincmd h<CR>
nnoremap j :wincmd j<CR>
nnoremap k :wincmd k<CR>
nnoremap l :wincmd l<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" UNDO TREE - REALLY COOL STUFF, VERSION CONTROL ()
nnoremap <leader>u :UndotreeShow<CR>


nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>


" HARD MODE
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


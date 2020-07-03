"
"  _ __ ___   ___ _ __ ___    __   _(_)_ __ ___  _ __ ___  
" | '_ ` _ \ / __| '_ ` _ \   \ \ / / | '_ ` _ \| '__/ __| 
" | | | | | | (__| | | | | |   \ V /| | | | | | | | | (__  
" |_| |_| |_|\___|_| |_| |_|    \_/ |_|_| |_| |_|_|  \___| 
"                                                           

" Vim settings
syntax on


set hidden
set noerrorbells
set noexpandtab
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent 
set number
set relativenumber

set lbr
set nolist
set wrap


set smartcase
set backup

set directory=~/.vim/swap//
set backupdir=~/.vim/backupdir//
set undodir=~/.vim/undodir//

set undofile

set incsearch
set termguicolors

set cmdheight=1

set updatetime=500

set shortmess+=c

set cursorline
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey


" Plugins
call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language Picker uppers
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'sheerun/vim-polyglot'
Plug 'gko/vim-coloresque'
Plug 'chrisbra/Colorizer'

" Fuzzy
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Buffer Management
Plug 'mbbill/undotree'
Plug '907th/vim-auto-save'

" Git
Plug 'tpope/vim-fugitive'

" Smart Starting
Plug 'mhinz/vim-startify'

" Motion
Plug 'easymotion/vim-easymotion'

"Notes
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'


call plug#end()

" Colorscheme
set background=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'
highlight Normal guibg=none
highlight NonText guibg=none

" Config

let loaded_matchparen = 1
let mapleader = " "

" Folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

let g:ranger_map_keys = 0

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ale_fixers= {
\    'javascript': ['eslint'],
\    'javascriptreact': ['eslint'],
\    'typescript': ['tslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}

let g:ale_linters= {
 \ 'javascript': ['eslint'],
 \ 'javascriptreact': ['eslint'],
 \ 'typescript': ['tsserver', 'tslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Functions
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map <leader>tc :call ToggleCalendar()<CR>

" Key mappings

" GO TO COC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gD <Plug>(coc-declaration)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)

" EasyMotion
map <Leader> <Leader> <Plug>(easymotion-prefix)

" Fuzzy Files
nnoremap <C-p> :GFiles <CR>
nnoremap <leader>f :GFiles <CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>bf :Buffers<CR>
nnoremap <leader>s :Ag<CR>

" Window Moving
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" UNDO TREE - REALLY COOL STUFF, VERSION CONTROL ()
nnoremap <leader>u :UndotreeShow<CR>


nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>


" HARD MODE
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>r :Ranger<CR>

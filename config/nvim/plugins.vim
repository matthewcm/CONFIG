" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" === Javascript Plugins === "

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" === Syntax Highlighting === "

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'mhinz/vim-startify'

" VimWiki
Plug 'vimwiki/vimwiki'
Plug  'mattn/calendar-vim'
Plug 'tpope/vim-markdown'

" Tag pairing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Nerd Comments
Plug 'scrooloose/nerdcommenter'

"Autoread - Refresher
"Plug 'djoshea/vim-autoread'

" Initialize plugin system
call plug#end()

set backspace=2
set nobackup
set nowritebackup
set incsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround
set nojoinspaces
set number
set nowrap
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins (https://vimawesome.com/)
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'
Plugin 'indentLine.vim'
Plugin 'majutsushi/tagbar'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'vim-airline/vim-airline'
Plugin 'isruslan/vim-es6'
Plugin 'scwood/vim-hybrid'
Plugin 'thoughtbot/vim-rspec'
Plugin 'ngmy/vim-rubocop'
Plugin 'rakr/vim-two-firewatch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-projectionist'
Plugin 'leafgarland/typescript-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'preservim/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

set guifont=FiraCode\ Nerd\ Font:h11
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

if has('gui_running')
  set linespace=-2
end

set termguicolors
set encoding=UTF-8

colorscheme tokyonight
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
let g:airline_theme = "tokyonight"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:NERDTreeRespectWildIgnore = 1

let g:ctrlp_use_caching = 0

autocmd BufWritePre * :%s/\s\+$//e
set wildignore+=/tmp/,.so,.swp,.zip,/node_modules/*

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:indentLine_char = '┆'
let delimitMate_expand_cr = 1
let g:snipMate = { 'snippet_version' : 1 }
let NERDTreeShowHidden=1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc

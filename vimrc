set nocompatible                " be iMproved, required
set encoding=utf-8
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end
" plugin on Github repo
Plugin 'tpope/vim-fugitive'

" Language Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'slim-template/vim-slim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/Vim-R-Plugin'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'chriskempson/base16-vim'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'Shougo/neocomplcache.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Raimondi/delimitMate'
Plugin 'mileszs/ack.vim'

Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
" quickly write HTML, just like zencoding but simple enough
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" quickly comment your code, try ,cc on selected line
Plugin 'scrooloose/nerdcommenter' 
" quickly search file(s) use ctrl-p F5 refresh
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()              " required
filetype plugin indent on      " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList         - lists configured plugins
" :PluginInstall      - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo   - searches for foo; append `!` to refresh local cache
" :PluginClean        - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2

set autoindent
set smartindent
set smarttab
set expandtab

set encoding=utf8
set nu                          " Number of lines
set cursorline
set autoread
set splitright
set splitbelow
set iskeyword+=-                " support css word with -
set backspace=indent,eol,start  " vim 7.4 backspace fix
set hlsearch
set incsearch
set nobackup
set noswapfile
set ignorecase
syntax on
syntax enable

" Ctrl-p configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.o,*.obj,*.pyc
set wildignore+=*.png,*.jpg,*.gif,*.ico
set wildignore+=*.swf,*.fla
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv
set wildignore+=*.git*,*.hg*,*.svn*
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Solarized colorscheme
set t_Co=256
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
" colorscheme solarized
let base16colorspace=256
colorscheme base16-ocean

" hot keys
map <C-A> ggVG
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

map <Leader><Leader> <Leader>c<space>
" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" remap VIM 0
map 0 ^ 

" filetype detection
au BufNewFile,BufRead *.dump set filetype=sql
au BufNewFile,BufRead *.scss set filetype=scss
au BufNewFile,BufRead *.cap set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.rb.erb set filetype=ruby
au BufNewFile,BufRead *.jade set filetype=jade

autocmd BufNewFile,BufRead *.md set nofoldenable

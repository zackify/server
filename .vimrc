set nocompatible              " be iMproved, required
filetype off                  " required



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

let mapleader=","


" Search

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\node_modules$'
let g:ctrlp_root_markers = ['node_modules']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

map <leader>s :CtrlP<cr>

nnoremap <leader><leader> :wq<cr>

map <leader>g :go<CR>
map <leader>w :w!<CR>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']



syntax enable
set background=dark
colorscheme solarized

set noswapfile
set tabstop=2
set softtabstop=2
set expandtab
set number
set showmatch
set incsearch
set hlsearch
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,

"move up and down on visual line, not real lines
nnoremap j gj
nnoremap k gk

"move to beginning / end
nnoremap b ^
nnoremap e $
nnoremap B b
nnoremap E e
" highlight last inserted text
nnoremap gV `[v`]

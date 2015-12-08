set nocompatible              " be iMproved, required
filetype off                  " required



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'moll/vim-node'
Plugin 'embear/vim-localvimrc'

call vundle#end()

let mapleader="\<Space>"


"jkl; to move
noremap l h
noremap ; l
noremap h ;

"gf for same tab, ff for new tab (look at node.vim)
nnoremap ff <c-w>f

" Search

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\node_modules$'
let g:ctrlp_root_markers = ['node_modules']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Allow gf to work with PHP namespaced classes.
set includeexpr=substitute(v:fname,'\\\','/','g')
set suffixesadd+=.php

"remaps
"find files
map <leader>s :CtrlP<cr>

nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q<cr>

nnoremap <Leader>h <C-w>p
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

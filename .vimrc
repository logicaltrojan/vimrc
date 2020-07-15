set nocompatible              " be iMproved, required
filetype off                  " required
set number 
" set the runtime path to include Vundle and initialize

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set splitbelow
set ts=8
set sw=4
set sts=4
set smartindent
set cindent 

"set clipboard=unamedplus
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP


vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
set rtp+=~/.vim/bundle/Vundle.vim



call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mattn/emmet-vim'
Plugin 'surround.vim'
Plugin 'jiangmiao/auto-pairs'


call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin()
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'luochen1990/rainbow'
call plug#end()
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
let mapleader=","



noremap <C-F> :NERDTreeFind<CR>
noremap <Leader>n :NERDTreeToggle<CR>

nmap <Leader><Leader>w <Plug>(easymotion-bd-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
noremap <Leader>q gt
noremap <Leader>t gT


"
"YCM
"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'

let g:rainbow_active =1

"nnoremap g :YcmCompleter GoTo
" nnoremap gg :YcmCompleter GoToImprecise
"nnoremap d :YcmCompleter GoToDeclaration
"nnoremap t :YcmCompleter GetType
"nnoremap p :YcmCompleter GetParent 

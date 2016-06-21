set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ###################################################################################

" FLATCOLOR Install
Plugin 'maxst/flatcolor'

" EMMET Install
Plugin 'mattn/emmet-vim'

" AIRLINE Install
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" VIRTUALENV Install
Plugin 'jmcantrell/vim-virtualenv'

" GITGUTTER Install
Plugin 'airblade/vim-gitgutter'

" INDENT GUIDES Install
Plugin 'nathanaelkane/vim-indent-guides'

" NERDTREE Install
Plugin 'scrooloose/nerdtree'

" SYNTASTIC Install
Plugin 'scrooloose/syntastic'

" SOLARIZED Install
Plugin 'altercation/vim-colors-solarized'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
filetype plugin indent on

set nu

colorscheme gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark="hard"
set t_Co=256

set cursorline
set cursorcolumn

set autoindent
set cindent
set expandtab
set shiftwidth=6
set softtabstop=6

set pastetoggle=<F2>

map <F7> mzgg=G`z

" ########## syntatic config ##########
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ########## airline config ##########
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" ########## indent guide config ##########
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set ts=2 sw=2 et
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ########## gitgutter config ##########
let g:gitgutter_sign_column_always = 1

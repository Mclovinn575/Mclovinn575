" Disable compattibility with vi which can cause unexpected issues.
set nocompatible


" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on
syntax on

    " CONSOLE SPACING -------------------------------------------------------
    " Sets line numbers for better readability.
    set number

    " Highlight cursor line underneath the cursor horizontally
    set cursorline 

    " Highlight cursor line underneath the cursor vertically
    " set cursorcolumn

    " Set shift width to 4 spaces
    set shiftwidth=4

    " Set tab width to 4 columns
    set tabstop=4

    " use space characters instead of tabs
    set expandtab

" Do not save backup files
set nobackup

" Do not let the cursor scroll below or above N number of lines when scrolling
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching through a file incrementally, highlight matching characters
" as you search.
set incsearch

" Ignore captial letters during searching with /
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for captial letters.
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are in on the last line.
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Set the commands to save in history. Default number is 20
set history=1000

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Certain files you'll never edit with vim. You can have vim ignore such
" files. Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

    " FOLDING ----------------------------------------
    " Vimrc allows 'folding' which allows collapsing a block of vimrc rules. 
    " Currently set to create folds with 'zf'
    "" 'zi' will turn folding on or off
    "" 'zd' and 'zD' will delete a single linde of fold or all folds respectivley 
    set foldopen=all
    set foldclose=all
    set foldcolumn=1
    " ^^Above code will allow Vim to automatically open and close all folds for
    " you.
    "
    " You can change HOW Vim folds things for you if you do not want to fold
    " things automatically.
    set foldmethod=indent
    """ Methods include: indent, marker, syntax, expression, diff (unchanged
    """ lines)


    " Reampping Keys ----------------------------------------------------------
    "   You can Remap keys using various modes in Vim. You can remap keys to do
    "   things within normal, insert, and visual mode.
    "   
    "   nnoremap = normal mode
    "   inoremap = insertmode
    "   vnoremap = visual mode
    " Set leader key to ','
    let mapleader = ","
    " Allows me to initiate a file search similar to fuzzyfinder without plugin
    noremap <C-p> :find ./<cr>
    " Allows me to 'esc' with the 'jj' press in quick succession while in
    " insert mode. If double j needs to be pressed, give it a second.
    inoremap jj <esc>
    "   



    " Plugins ------------------------------------
    " 
    call plug#begin('~/.vim/plugged')
    "
    "
    Plug 'dense-analysis/ale'
    Plug 'vimwiki/vimwiki'
    "
    "
    "
    "
    "
    call plug#end()    
    "







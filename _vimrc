"
"
"
"
    " CONSOLE SPACING -------------------------------------------------------
    " Sets line numbers for better readability.
    set number

    " Highlight cursor line underneath the cursor horizontally
    set cursorline 
    hi cursorline ctermbg=darkgrey

    " Highlight cursor line underneath the cursor vertically
    " set cursorcolumn

    " Set shift width to 4 spaces
    set shiftwidth=4

    " Set tab width to 4 columns
    set tabstop=4

    " use space characters instead of tabs
    set expandtab
    "
"
    " GENERAL SETTINGS ---------------------------------------------

    " Do not save backup files
    set nobackup

    " Do not let the cursor scroll below or above N number of lines when scrolling
    set scrolloff=10

    " Do not wrap lines. Allow long lines to extend as far as the line goes.
    set nowrap

    " While searching through a file incrementally, highlight matching characters
    " as you search.
    set incsearch

    " Allows you to move left or right with the CTRL+h and CTRL+l while in
    " insert mode.
    inoremap <c-l> <esc>la
    "
    "
    
    
    
    
    
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
    " Disable compattibility with vi which can cause unexpected issues.
    set nocompatible


    " Enable type file detection. Vim will be able to try to detect the type of file in use.
    filetype on


    " Load an indent file for the detected file type.
    filetype indent on

    " Turn syntax highlighting on
    syntax on
    "
    " Allows backspace over already written text, indents, and line starts
    set backspace=indent,eol,start
    "
    " Sets autocoplete configuration
    set shortmess+=c
    set completeopt=menuone
    "
    "
    "
"
    " FOLDING ----------------------------------------
    " Vimrc allows 'folding' which allows collapsing a block of vimrc rules. 
    " Currently set to create folds with 'zf'
    "" 'zi' will turn folding on or off
    "" 'zd' and 'zD' will delete a single linde of fold or all folds respectivley 
    "set foldopen=all
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
"
    " Plugins ------------------------------------
    " 
    call plug#begin('~/.vim/plugged')
    "
    "
    Plug 'dense-analysis/ale'
    Plug 'vimwiki/vimwiki'
    Plug 'preservim/nerdtree'
    Plug 'vim-scripts/AutoComplPop'
    "
    "
    "
    "
    "
    call plug#end()    
    "
    "
"
    " MAPPINGS ------------------------------------------------


    "" Reampping Keys ----------------------------------------------------------
    "   You can Remap keys using various modes in Vim. You can remap keys to do
    "   things within normal, insert, and visual mode.
    "   
    "   nnoremap = normal mode
    "   inoremap = insertmode
    "   vnoremap = visual mode
    "
    "
    "
    " Set leader key to ','
    let mapleader = ","
    "
    " Allows me to initiate a file search similar to fuzzyfinder without plugin
    "
    noremap <C-p> :find ./<cr>
    "
    " Allows me to 'esc' with the 'jj' press in quick succession while in
    " insert mode. If double j needs to be pressed, give it a second.
    inoremap jj <esc>
    "
    " Press the space bar to ttype the ':' character in command mode
    nnoremap <space>  :
    "
    "Pressing the letter 'o' will open a new line bleow the current one.
    "Exit insert mode after creating a new line above or below. O/o
    nnoremap o o<esc>
    nnoremap O O<esc>
    "
    " Center the cursoer vertically when moving to the next word during a search.
    nnoremap n nzz
    nnoremap N Nzz
    "
    "Yank from cursor to the end of line.
    nnoremap Y y$
    "
    "
    "" Running python scripts inside vim =============================
    " I map Ctrl-o to a chain of commands here.
    " :w saves the file.
    " <cr> (carriage return) is like pressing the enter button
    " !py % executes the current file with Python.
    nnoremap <C-r> :w <cr>:! py % <cr>
    "
    " You can split the windows in Vim by typing :split or :vsplit
    " Navigate the split easier with ctrl + j, k, h , l
    nnoremap <C-j> <c-w>j
    nnoremap <C-h> <c-w>h
    nnoremap <C-l> <c-w>l
    nnoremap <C-k> <c-w>k
    "
    " Resize Split windows
    noremap <c-up> <c-w>+
    noremap <c-down> <c-w>-
    noremap <c-left> <c-w>>
    noremap <c-right> <c-w><
    "
    " Sets NERDtree keybind to open/close nertree pane for quick file browsing
    noremap <c-n> :NERDTreeToggle <cr>
    "
    " Have NERDTree ignore certain files and directories
    let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
    "
    "
    "
"
    " VIMSCRIPT -----------------------------------------------
    "
    " Display cursorline and cursorcolumn ONLY in active window
        "augroup cursor_off
        "automcd!
        "autocmd WinLeave * set nocursorline nocursorcolumn
        "autocmd WinEnter * set cursorline 
        "augroup END
    "
"
    "STATUS LINE ---------------------------------------------
    "
    " Clear status line when vimrc is reloaded.
    set statusline=
    "
    " Status line left side.
    set statusline+=\ %F\ %M\ %Y\ %R
    "
    " Use a divider to separate the left side from the right side.
    set statusline+=%=
    "
    " Status line right side.
    set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
    "
    " Show the status on the second to last line.
    set laststatus=2
    "
"
"
"
"
"
"
"
"
"
"

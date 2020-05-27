" VIM Resources
" https://hackernoon.com/vim-is-the-perfect-ide-c226d7ed6d88 
" Plug {
"
"let g:loaded_python_provider = 1
set background=dark

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

colorscheme less

filetype plugin indent on                " Automatically detect file types.
syntax on                                " syntax highlighting
set autowrite                  " automatically write a file when leaving a modified buffer
"set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
"set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
"set virtualedit=onemore             " allow for cursor beyond last character, 
"                                   this will prevent the 'x' from deleting
"                                   from the end of the line.
set formatoptions=croq          " (fo) influences how vim automatically formats text
set hidden        "opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set history=5000                     " Store a ton of history (default is 20)
set shortmess+=I
"set macmeta

"Can't backspace past start of operation
set backspace=indent,eol,start

" New splits appear in unintuitive places
set splitbelow
set splitright

"" enable mouse scrolling -- had to disable because
"cut/paste stopped working
"set mouse=a       
"set clipboard=unnamed
   
" Setting up the directories
set undofile                       " so is persistent undo ...
set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set undolevels=1000                " maximum number of changes that can be undone
set undoreload=10000               " maximum number lines to save for undo on a buffer reload
set backup
set backupdir=$HOME/.vimbackup/    " but not when they clog .
set directory=$HOME/.vimswap/      " Same for swap files
set viewdir=$HOME/.vimviews/       " same for view files
set undodir=$HOME/.vimviews/       " same for view files

"" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

" Vim UI
" Favorite color schemes
"set showbreak=->                    " a marker to highlight wrapped lines
set tabstop=4                        " tabstops
set shiftwidth=2                     " shift width
"set expandtab                        " turn ^T to spaces
set tabpagemax=15                    " only show 15 tabs
set timeoutlen=3000
set ttimeoutlen=1000

set showmode                         " display the current mode
set cursorline                       " highlight current line
hi cursorline guibg=#333333          " highlight bg color of current line
"set cursorcolumn                       " highlight current column
"hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=lightblue ctermbg=lightgray 
"hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE gui=NONE guibg=#2d2d2d guifg=NONE
"hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE

" only  turn on for current split window
augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

if has('cmdline_info')
  set ruler                          " show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
  set showcmd                        " show partial commands in status line and
									 " selected characters/lines in visual mode
endif

set linespace=0                 " No extra spaces between rows
"set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high 
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
"set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
"set scrolloff=3                 " minimum lines to keep above and below cursor
set nofoldenable                 " turn off autofolding
"set gdefault                    " the /g flag on :s substitutions by default
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

" Popup color.
hi Pmenu ctermbg=248
hi PmenuSel ctermbg=157
hi PmenuSbar ctermbg=0

"set runtimepath^=~/.vim_go_runtime

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab


" =================== Tmux =====================
  "set statusline+=%F
set statusline+=%m
set rtp+=/usr/local/bin/fzf

source ~/.vim/plugged.vim
source ~/.vim/mapping.vim
source ~/.vim/define.vim

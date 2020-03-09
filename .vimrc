" VIM Resources
" https://hackernoon.com/vim-is-the-perfect-ide-c226d7ed6d88 
" Plug {
"
"let g:loaded_python_provider = 1
let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:impact_transbg=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Now we can:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" Also don't forget 'b' for buffer
" :b lets you autocomplete any open buffer

"colorscheme janah
"colorscheme railscasts
"colorscheme lizard
colorscheme less
"colorscheme sidewalk-dark
"colorscheme vim-framer-syntax

	call plug#begin('~/.vim/plugged')

    " My Bundles here:
    " original repos on github
    Plug 'git://github.com/rstacruz/sparkup'

    " vim-scripts repos
    Plug 'goldfeld/ctrlr.vim'
    Plug 'dewrich/unite.vim'
    "Plug 'dewrich/neomru.vim'
    Plug 'dewrich/ack.vim'
    Plug 'dewrich/indentpython.vim'
    "Plug 'dewrich/mru.vim'
    Plug 'dewrich/L9'
    Plug 'dewrich/tlib_vim'
    Plug 'dewrich/vim-fugitive'
    Plug 'dewrich/socketIO-client'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'golang/lint'
    Plug 'michalliu/sourcebeautify.vim'
    Plug 'vim-scripts/ScrollColors'
    Plug 'Rykka/InstantRst'
    Plug 'Rykka/riv.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'Rykka/rhythm.css'
    "Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-db'
    Plug 'bronson/vim-visual-star-search'
    Plug 'mattn/webapi-vim'
    Plug 'cirla/vim-giphy'
    Plug 'nelstrom/vim-qargs'
    Plug 'vim-ruby/vim-ruby'
    Plug 'ecomba/vim-ruby-refactoring'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-rake'
    Plug 'rust-lang/rust.vim'
    Plug 'thoughtbot/vim-rspec'
    Plug 'Shougo/neocomplete.vim'
    Plug 'vim-scripts/MultipleSearch'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'revolvingcow/vim-umbrella'
    let g:deoplete#enable_at_startup = 1
    Plug 'cyansprite/deoplete-omnisharp' , {'do': './install.sh'}

    Plug 'fatih/vim-go'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'hashivim/vim-hashicorp-tools'
    Plug 'Konfekt/FastFold'
    Plug 'chase/vim-ansible-yaml'
    Plug 'vitalk/vim-simple-todo'

	" Add plugins to &runtimepath
	" Track the engine.
    Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
    Plug 'honza/vim-snippets'

	" Navigate through vim editor history
    Plug 'sjl/gundo.vim'
    Plug 'alecthomas/gometalinter'
    Plug 'mklabs/split-term.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
    Plug 'yssl/QFEnter'
    Plug 'martingms/vipsql'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'w0rp/ale'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-sleuth'
    Plug 'kablamo/vim-git-log'
    Plug 'terryma/vim-multiple-cursors'
	Plug 'habamax/vim-asciidoctor'
	Plug 'bronson/vim-crosshairs'

	let g:multi_cursor_use_default_mapping=0

	" Default mapping
	let g:multi_cursor_start_word_key      = '<C-n>'
	let g:multi_cursor_select_all_word_key = '<A-n>'
	let g:multi_cursor_start_key           = 'g<C-n>'
	let g:multi_cursor_select_all_key      = 'g<A-n>'
	let g:multi_cursor_next_key            = '<C-n>'
	let g:multi_cursor_prev_key            = '<C-p>'
	let g:multi_cursor_skip_key            = '<C-x>'
	let g:multi_cursor_quit_key            = '<Esc>'
	set selection=inclusive

    " UI Themes
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'sjl/badwolf', { 'as': 'badwolf' }
	Plug 'mhinz/vim-janah', { 'as': 'janah' }

    " StatusBars
    "Plug 'itchyny/lightline.vim'
	Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'

    " Archived
    "Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    "Plug 'Shougo/vimshell.vim'
    "Plug 'sebdah/vim-delve'
	"Plug 'junegunn/goyo.vim'
	"Plug 'Yggdroot/indentLine'
    "Plug 'gregsexton/gitv', {'on': ['Gitv']}
    "Plug 'janko-m/vim-test'
    " for vim-test these Ctrl mappings work well when Caps Lock is mapped to Ctrl
	" t Ctrl+n
    "nmap <silent> t<C-n> :TestNearest<CR> 
	" t Ctrl+f
    "nmap <silent> t<C-f> :TestFile<CR>    
	" t Ctrl+s
    "nmap <silent> t<C-s> :TestSuite<CR>   
	" t Ctrl+l
    "nmap <silent> t<C-l> :TestLast<CR>    
	" t Ctrl+g
    "nmap <silent> t<C-g> :TestVisit<CR>   

   "Plug 'easymotion/vim-easymotion'
    "Plug 'https://github.com/dewrich/syntastic'
    "Plug 'https://github.com/dewrich/vim-easygrep'
    "Plug 'https://github.com/rdunklau/vim-perltidy'
    "Plug 'https://github.com/vim-scripts/perlprove.vim'
    "Plug 'benmills/vimux'
    "Plug 'benmills/vimux-golang'
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "Plug 'https://github.com/zhaocai/GoldenView.Vim'
    "Plug 'https://github.com/ctrlpvim/ctrlp.vim'
    "Plug 'jodosha/vim-godebug'
    "Plug 'https://github.com/tpope/vim-rbenv'
    "Plug 'https://github.com/junegunn/vim-easy-align'
    "Plug 'https://github.com/Valloric/YouCompleteMe'
    "Plug 'https://github.com/Lokaltog/powerline'
    "Plug 'https://github.com/Raimondi/delimitMate'
    "Plug 'https://github.com/jiangmiao/auto-pairs'
    "Plug 'https://github.com/davidpthomas/vim4rally'
    "Plug 'https://github.com/farazdagi/vim-go-ide'
    "Plug 'https://github.com/dgryski/vim-godef'
    "Plug 'https://github.com/lrvick/Conque-Shell'

	call plug#end()
" }
let s:giphy_api_key = 'dc6zaTOxFJmzC'

" old schemes
"colorscheme herald
"colorscheme jellybeans
"colorscheme koehler
"colorscheme synic
"colorscheme wombat

"NOTES: 
" General {
  filetype plugin indent on                " Automatically detect file types.
  syntax on                                " syntax highlighting
  au BufReadPost *.ep set syntax=html
  au BufRead /tmp/psql.edit.* set syntax=sql

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

  " remaps the semi-colon to colon
  nnoremap ; :            
  map <silent> ,/ :nohlsearch<CR>

  " New splits appear in unintuitive places
   set splitbelow
   set splitright

  "Ignore nusance keys
  nnoremap <F1> <nop>
  nnoremap Q <nop>
  nnoremap K <nop>


  "" enable mouse scrolling -- had to disable because
  "cut/paste stopped working
  "set mouse=a       
  "set clipboard=unnamed
   
  " Setting up the directories {
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
    au BufWinLeave * silent! mkview    " make vim save view (state) (folds, cursor, etc)
    au BufWinEnter * silent! loadview  " make vim load view (state) (folds, cursor, etc)
  " }
" }
"

" Vim UI {
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
" }

"let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1

"Ansible
let g:ansible_options = {'ignore_blank_lines': 0}

" ==================== UltiSnips ====================
let g:go_snippet_engine = "ultsnips"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:go_snippet_case_type = "camelcase"

function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<CR>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<CR>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let g:AutoPairsFlyMode = 1

" For the snipmate plugin
let g:snips_author = 'Dewayne Richardson'
"let g:gitgutter_max_signs = 10000

"For Riv (.rst) helper
let traffic_control = { 'path': '/Users/dewayne.richardson/projects/github.com/traffic_control/docs' }
let g:riv_projects = [traffic_control]
let g:riv_fold_level = 0
let g:riv_fold_auto_update = 0


" Indent Line Color plugin
let g:indentLine_color_gui = '#A4E57E' 

autocmd StdinReadPre * let s:std_in=1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"
map + <C-W>+
map - <C-W>-

  if &diff                             " only for diff mode/vimdiff
      set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync
  endif

" Replaces the ^M character with a carraige return native to the system
 function! ReplaceM()
     :%s/^M/\r/g
 endfunction

"au BufWritePost *.pl,*.pm !perl -c %
"au BufWritePost *.pl,*.pm !perl -wcIlib %


"Go Settings
"set rtp+=$GOROOT/misc/vim
" disable the GOPATH Prompt
"let g:go_disable_autoinstall = 1

"au BufRead,BufNewFile *.json setf json
"au! BufRead,BufNewFile *.json set filetype=json 

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=120 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END

"set rtp+=/Users/dewayne.richardson/.vim/bundle/powerline/powerline/bindings/vim
"Powerline Settings {
  let g:Powerline_symbols = 'fancy'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_theme = 'lucius'
  """ FOR STATUSLINE

  set encoding=utf-8 " Necessary to show Unicode glyphs
  "set rtp+=/Users/dewayne.richardson/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
  set nocompatible   " Disable vi-compatibility
  set laststatus=2   " Always show the statusline
  set showtabline=2 " Always display the tabline, even if there is only one tab
  set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
  set t_Co=256
  " For powerline font in MacVim
  "set guifont=Meslo\ for\ Powerline
  set guioptions+=a " automatically copy visual selection into clipboard
  "set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
  set tags+=~/tags
"}
"
"YCM Settings
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

"Mojolicious Syntax
    let mojo_highlight_data = 1
    let mojo_disable_html = 1
    let mojo_no_helpers = 1

	let g:ycm_disable_for_files_larger_than_kb = 10000

" Keyboard Mappings {
"   FUNCTION KEYS
"
function! Hello(text)
        silent execute a:text
endfunction

let $PATH = "/Users/dewayne.richardson/projects/go/bin:".$PATH
let $GOPATH = "/Users/dewayne.richardson/projects/go"
let g:go_gorename_bin = expand("/Users/dewayne.richardson/projects/go/bin/gorename")
let g:go_bin_path = expand("/Users/dewayne.richardson/projects/go/bin")
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:dev = "postgres://traffic_ops:twelve@localhost:5432/to_development"
let g:test = "postgres://traffic_ops:twelve@localhost:5432/to_test"

" Popup color.
hi Pmenu ctermbg=248
hi PmenuSel ctermbg=157
hi PmenuSbar ctermbg=0

"set runtimepath^=~/.vim_go_runtime
"source ~/.vim_go_runtime/vimrc/basic.vim
"source ~/.vim_go_runtime/vimrc/filetypes.vim
"source ~/.vim_go_runtime/vimrc/plugins.vim
"source ~/.vim_go_runtime/vimrc/extended.vim
"try
"source ~/.vim_go_runtime/custom_config.vim
"catch
"endtry
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

let g:acp_enableAtStartup = 0


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab


"Fatih tips
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

"command GOLINT :cexpr system('golangci-lint run')
" go programming language
"autocmd BufWritePost *.go !gofmt -w -s %:p
"autocmd BufWritePost *.go !clear && golangci-lint run --color never --enable-all %:p:h

" ==================== Fugitive ====================
" ==================== Golden View Split =========================
" 1. split to tiled windows
"nmap <silent> <C-L>  <Plug>GoldenViewSplit

" 2. quickly switch current window with the main pane
" and toggle back
"nmap <silent> <F8>   <Plug>GoldenViewSwitchMain
"nmap <silent> <S-F8> <Plug>GoldenViewSwitchToggle

" 3. jump to next and previous window
"nmap <silent> <C-N>  <Plug>GoldenViewNext

" =================== ctrlp =====================
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'CtrlP'
"set wildignore+=*/local,*/tmp/*,*.so,*.swp,*.zip 

"function! GotoDefinition()
    "let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*\\n*\\s*{")
  "endfunction
  "map <F4> :call GotoDefinition()<CR>
  "imap <F4> <c-o>:call GotoDefinition()<CR>

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }

"let g:ctrlp_user_command = 'find %s -type f'   
"nnoremap <silent> <Leader>p :CtrlP<CR>

" =================== Tmux =====================
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
"nnoremap <silent> <C-p> :TmuxNavigatePrevious<CR>

  " Easy window navigation
  "map <C-h> <C-w>h
  "map <C-j> <C-w>j
  "map <C-k> <C-w>k
  "map <C-l> <C-w>l
  "map <C-x> <C-w>x
  map <Leader>ra :wa<CR> :GolangTestCurrentPackage<CR>
  map <Leader>rf :wa<CR> :GolangTestFocused<CR>

  "set statusline+=%F
  set statusline+=%m

  "HCL Hashcorp Language
  let g:hcl_fmt_autosave = 0
  let g:tf_fmt_autosave = 0

  "vim-terraform
  let g:nomad_fmt_autosave = 0
  autocmd FileType terraform setlocal commentstring=#%s
  let g:terraform_align=1

  augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  augroup END

" Ale Config
" " Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


set rtp+=/usr/local/bin/fzf

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" You can set up fzf window using a Vim command (Neovim or latest Vim 8 required)
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

source ~/.vim/mapping.vim

" adjust cursor for insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul


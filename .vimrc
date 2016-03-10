colorscheme less
"Researched colorschemes
"kaltex
"jhdark
"lodestone
"miko
"mizore
"prmths
"rdiark-terminal
"slate
"smyck
"
"symfony - presentations
"tir_black

" old schemes
"colorscheme herald
"colorscheme jellybeans
"colorscheme koehler
"colorscheme synic
"colorscheme wombat
"NOTES: 
"Tips: to comment out a row of lines CTRL-V now press "i" for insert or
      "c" for change then press the comment character"
" General {
		filetype plugin indent on                " Automatically detect file types.
		syntax on                                " syntax highlighting
		au BufReadPost *.ep set syntax=html

		" set autowrite                  " automatically write a file when leaving a modified buffer
		"set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
		"set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
		"set virtualedit=onemore             " allow for cursor beyond last character, 
		"                                   this will prevent the 'x' from deleting
		"                                   from the end of the line.
		set formatoptions=croq          " (fo) influences how vim automatically formats text
		set hidden        "opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
		set history=5000                     " Store a ton of history (default is 20)
		set shortmess+=I

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
		"au BufWinLeave * silent! mkview    " make vim save view (state) (folds, cursor, etc)
		"au BufWinEnter * silent! loadview  " make vim load view (state) (folds, cursor, etc)
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
  set showmode                         " display the current mode
  set cursorline                       " highlight current line
  hi cursorline guibg=#333333          " highlight bg color of current line
  "set cursorcolumn                       " highlight current column
  hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=lightblue ctermbg=lightgray 
  hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE gui=NONE guibg=#2d2d2d guifg=NONE
" only  turn on for current split window
  augroup CursorLineOnlyInActiveWindow
		autocmd!
		autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
		autocmd WinLeave * setlocal nocursorline
  augroup END

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

" VUNDLE {
    set rtp+=~/.vim/bundle/Vundle.vim
    "set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()

    " let Vundle manage Vundle
    " required! 
    Plugin 'gmarik/Vundle.vim'

    " My Bundles here:
    "
    " original repos on github

    " Forked
    Plugin 'git://github.com/dewrich/unite.vim.git'
    Plugin 'git://github.com/dewrich/neomru.vim'
    Plugin 'git://github.com/dewrich/L9.git'
    Plugin 'git://github.com/dewrich/ack.vim.git'
    Plugin 'git://github.com/dewrich/indentpython.vim.git'
    Plugin 'git://github.com/dewrich/nerdtree.git'
    Plugin 'git://github.com/dewrich/supertab.git'
    Plugin 'git://github.com/dewrich/syntastic.git'
    Plugin 'git://github.com/dewrich/tlib_vim.git'
    Plugin 'git://github.com/dewrich/vim-fugitive.git'
    Plugin 'git://github.com/dewrich/socketIO-client.git'
    Plugin 'git://github.com/dewrich/mru.vim.git'
    Plugin 'git://github.com/dewrich/vim-easygrep.git'

	" Public 
	Plugin 'git://github.com/scrooloose/nerdcommenter.git'
    Plugin 'git://github.com/benmills/vimux.git'
    Plugin 'git://github.com/fatih/vim-go.git'
    Plugin 'git://github.com/Valloric/YouCompleteMe.git'
    Plugin 'git://github.com/golang/lint.git'
    Plugin 'git://github.com/bling/vim-airline.git'
    Plugin 'git://github.com/SirVer/ultisnips.git'
    Plugin 'git://github.com/rstacruz/sparkup'
    Plugin 'git://github.com/honza/vim-snippets.git'
    Plugin 'git://github.com/rdunklau/vim-perltidy.git'
    Plugin 'git://github.com/tpope/vim-rbenv.git'
    Plugin 'git://github.com/michalliu/sourcebeautify.vim.git'
    Plugin 'git://github.com/vim-scripts/perlprove.vim.git'
    Plugin 'git://github.com/vim-scripts/ScrollColors.git'
    Plugin 'git://github.com/Rykka/InstantRst.git'
    Plugin 'git://github.com/Rykka/riv.vim.git'
    Plugin 'git://github.com/Rykka/rhythm.css.git'
    Plugin 'git://github.com/airblade/vim-gitgutter.git'
    Plugin 'git://github.com/tpope/vim-repeat.git'
    Plugin 'git://github.com/bronson/vim-visual-star-search.git'
	Plugin 'git://github.com/mattn/webapi-vim.git'
	Plugin 'git://github.com/cirla/vim-giphy.git'
	Plugin 'git://github.com/jiangmiao/auto-pairs.git'
	Plugin 'git://github.com/nelstrom/vim-qargs.git'
	Plugin 'git://github.com/vim-ruby/vim-ruby.git'
	Plugin 'git://github.com/vim-scripts/MultipleSearch.git'
	Plugin 'git://github.com/OmniSharp/omnisharp-vim.git'
	Plugin 'git://github.com/christoomey/vim-tmux-navigator.git'
	" These two go together
	Plugin 'git://github.com/xolox/vim-misc.git'
	Plugin 'git://github.com/vim-scripts/lua.vim.git'

	" Archive
    "Plugin 'git://github.com/dewrich/snipmate.vim.git'
    "Plugin 'git://github.com/dewrich/vimfiles.git'
    "Plugin 'git://github.com/Lokaltog/powerline.git'
    "Plugin 'git://github.com/Yggdroot/indentLine'
    "Plugin 'git://github.com/kien/ctrlp.vim.git'
    "Plugin 'git://github.com/tpope/vim-surround.git'
	"Plugin 'git://github.com/Raimondi/delimitMate.git'
	"Plugin 'git://github.com/davidpthomas/vim4rally.git'
	"Plugin 'git://github.com/dgryski/vim-godef.git'
	"Plugin 'git://github.com/lrvick/Conque-Shell.git'

    call vundle#end()
" }

"let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1

  " Easy window navigation
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-p> :TmuxNavigatePrevious<cr>

let g:AutoPairsFlyMode = 1

" For the snipmate plugin
let g:snips_author = 'Dewayne Richardson'
let g:gitgutter_max_signs = 10000

"For Riv (.rst) helper
let traffic_control = { 'path': '/Users/dricha209/projects/github.com/traffic_control/docs' }
let g:riv_projects = [traffic_control]
let g:riv_fold_level = 0
let g:riv_fold_auto_update = 0
let rst_syntax_folding = 0
set nofoldenable


"CTRLP configs
"let g:ctrlp_working_path_mode = 'c'
set wildignore+=*/local,*/tmp/*,*.so,*.swp,*.zip 

function! GotoDefinition()
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*\\n*\\s*{")
  endfunction
  map <F4> :call GotoDefinition()<CR>
  imap <F4> <c-o>:call GotoDefinition()<CR>

" Indent Line Color plugin
let g:indentLine_color_gui = '#A4E57E' 

autocmd StdinReadPre * let s:std_in=1

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

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=120 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END

let mapleader = ","

"" online doc
"Vim grep reminder mappings
  "map <Leader>vv  - Grep for the word under the cursor, match all occurences, like |gstar| 
  "map <Leader>vV  - Grep for the word under the cursor, match whole word, like |star| 
  "map <Leader>va  - Like vv, but add to existing list 
  "map <Leader>vA  - Like vV, but add to existing list 
  "map <Leader>vr  - Perform a global search search on the word under the cursor and prompt for a pattern with which to replace it. 
  "map <Leader>vo  - Select the files to search in and set grep options 

"Vim Go Settings {
  au BufRead,BufNewFile *.go set filetype=go 
  let g:go_fmt_command = "goimports"
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_fmt_autosave = 1
  let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <Leader>gv <Plug>(go-metalinter)
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
  au FileType go nmap <leader>gr <Plug>(go-run)
  au FileType go nmap <leader>gb <Plug>(go-build)
  au FileType go nmap <leader>gtf <Plug>(go-test-func)
  au FileType go nmap <leader>gt <Plug>(go-test)
  au FileType go nmap <leader>gtc <Plug>(go-test)
  au FileType go nmap <leader>gtv <Plug>(go-test-verbose)
  au FileType go nmap <leader>gc <Plug>(go-coverage)
  au FileType go nmap <Leader>gi <Plug>(go-implements)
  au FileType go nmap gd <Plug>(go-def)
  au FileType go nmap <Leader>gds <Plug>(go-def-split)
  au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
  au FileType go nmap <Leader>ge <Plug>(go-rename)
  "au FileType go nmap <Leader>gv <Plug>(go-vet)
"}

  let g:go_snippet_engine = "ultsnips"
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"

"set rtp+=/Users/dricha209/.vim/bundle/powerline/powerline/bindings/vim
"Powerline Settings {
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  """ FOR STATUSLINE
  set encoding=utf-8 " Necessary to show Unicode glyphs
  let g:Powerline_symbols = 'fancy'
  "set rtp+=/Users/dricha209/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
  set nocompatible   " Disable vi-compatibility
  set statusline+=%F
  set laststatus=2   " Always show the statusline
  set showtabline=2 " Always display the tabline, even if there is only one tab
  set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
  set t_Co=256
  " For powerline font in MacVim
  "set guifont=Meslo\ for\ Powerline
  set guioptions+=a " automatically copy visual selection into clipboard
  set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
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

    vmap <Tab> >gv
    vmap <S-Tab> <gv

    " source $MYVIMRC reloads the saved $MYVIMRC
    map <Leader>s :source $MYVIMRC \| :nohls
    "map <F1> :vertical ball<CR>
    "set pastetoggle=F2
    "map <F2> :set nocursorline nocursorcolumn<CR>
    map <F3> :QuickRun<CR>
    map <F4> :silent 1,$!~/.vim/rubybeautifier.rb<CR>
    map <F5> :vertical silent res +3<CR>
    map <F6> :vertical silent res -3<CR>
    map <F7> :res +1<CR>
    map <F8> :res -1<CR>
    "map <F8> :vsp ~/.vim/bundle/snipmate.vim/snippets/python.snippets<CR>
    "map <silent> <F9> call SplitResize()<CR>
    "map <silent> <F9> :NERDTreeToggle .<CR>
	map <C-n> :NERDTreeToggle<CR>
    "map <silent> <F9> :NERDTreeToggle %:p:h<CR>
    map <F10> :set paste
    "map <F10> :set paste<CR>
    map <F12> :set number!<CR>

"   COMBO KEYS
    " RUBY Generates a puts "var #-> #{var}"
    "map <C-D> yiwoputs "<Esc>pa #-> #{<Esc>pa.inspect}"<Esc>
    map <C-C> :s/^/#/g \| :nohlsearch<CR>
    map <C-D> yiwofmt.Printf("<Esc>pa ---> %v\n", <Esc>pa)<Esc>
    "map <C-P> :cnext<CR>
    "imap <C-O> <C-K>OK 
    "map <C-P> ihello<CR>
    "map <C-O><press Ctrl-K>OK<CR>
    "map <C-D> yiwologger.debug("<Esc>pa: " + <Esc>pa)<Esc>
    "map <C-D> yiwoputs <Esc>pa #-> #{<Esc>pa.inspect}"<Esc>
    "map <C-E> yiwo <Esc>:pa<CR>
    "map <C-D> yiwoputs("<Esc>pa: " + <Esc>pa)<Esc>==
    map <C-I> :w! \| :!go run %<CR>
    map <C-O> :w! \| :!go test -v %<CR>
    "Python print
    "map <C-I> yiwoprint "<Esc>pa: %s" % <Esc>pa<Esc>
    map <C-Y> yiwoputs("<Esc>pa: " + <Esc>pa.inspect)<Esc>==
    "map <C-I> yiwologger.info("<Esc>pa: " + <Esc>pa)<Esc>
    "map <C-P> yiwobinding.pry<Esc>
    "map <C-L> yiwo#TODO dricha209 -  <Esc>
    "map <C-D> yiwodef <Esc>pa <Esc>yiwoend<Esc>2kddo
    ""map <C-T> :FufFile<CR>
    "map <C-E> :vertical silent res -60<CR>
    map ,pd 1yiwoprint "<Esc>pa #-> (" . Dumper($<Esc>pa) . ")\n";<Esc>==
    map ,p 1yiwoprint "<Esc>pa #-> (" . $<Esc>pa . ")\n";<Esc>==
    map ,ld 1yiwo$self->app->log->debug("<Esc>pa #-> " . Dumper($<Esc>pa));<Esc>==
    map ,mmd 1yiwo$mojo->app->log->debug("<Esc>pa #-> " . Dumper($<Esc>pa));<Esc>==
    map ,l 1yiwo$self->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
    map ,mm 1yiwo$mojo->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
    map ,gs 1yiwofmt.Println("<Esc>pa #-> %s", <Esc>pa)<Esc>==
    "map ,gv 1yiwofmt.Println("#-> %+v", <Esc>pa )<Esc>==
	map ,r  <Esc>:!perl %<CR>
	map ,b  <Esc>:!bash %<CR>
	map ,ri  <Esc>:popup Riv.Insert<CR>
	map ,ir  <Esc>:InstantRst<CR>
	map ,pt  <Esc>:!prove -v %<CR>
	map ,u  <Esc>:!ctags `find . -name "*.pm"`<CR>
    map ,j :%!python -m json.tool<CR>

    " Rails Demo Shortcuts
    "map <C-X> yiworespond_to :html, :xml, :json
    "map <C-X> :%!xmllint --format -<CR>
    map <C-Y> yiwo<enter>respond_with(@servers) do \|format\|<enter>format.xml  { render :xml => @servers }

    "map <C-V> yiwovalidates :first_name, :presence => true
    "map <C-I> yiwovalidates :ipaddress, :presence => true, :uniqueness => true, :format => { :with => Resolv::IPv4::Regex }
    "map <C-O> yiwo<%= f.collection_select("owner_id", @owners, "id", "first_name") %>

    "Unite mappings
    nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
    nnoremap <Leader>f :Unite grep:.<cr>

	"Yanking lines is inconsistent
	nnoremap Y y$

	" Search anything 'visually' selected with '//'
	vnoremap // y/<C-R>"<CR>

	let $PATH = "/Users/dricha209/projects/go/bin:".$PATH
	let $GOPATH = "/Users/dricha209/projects/go"
	let g:go_gorename_bin = expand("/Users/dricha209/projects/go/bin/gorename")
	let g:go_bin_path = expand("/Users/dricha209/projects/go/")
	let g:ruby_path = system('echo $HOME/.rbenv/shims')

	let g:lua_complete_omni = 1

    "map <C-V> y$o<esc>pI:r!<esc>"add@a
    "map <C-H> :noautocmd vimgrep ;/ & ;/g **/*
" }

" Plug {
	call plug#begin('~/.vim/plugged')

    " My Bundles here:
    " original repos on github
    Plug 'git://github.com/rstacruz/sparkup'

    " vim-scripts repos
    Plug 'https://github.com/dewrich/unite.vim.git'
    Plug 'https://github.com/dewrich/neomru.vim'
    Plug 'git://github.com/dewrich/L9.git'
    Plug 'git://github.com/dewrich/ack.vim.git'
    Plug 'git://github.com/dewrich/indentpython.vim.git'
    Plug 'git://github.com/scrooloose/nerdtree.git'
	Plug 'git://github.com/scrooloose/nerdcommenter.git'
	Plug 'git@github.com:Xuyuanp/nerdtree-git-plugin.git'
    "Plug 'git://github.com/dewrich/supertab.git'
    Plug 'git://github.com/dewrich/syntastic.git'
    Plug 'git://github.com/dewrich/tlib_vim.git'
    Plug 'git://github.com/dewrich/vim-fugitive.git'
    "Plug 'git://github.com/dewrich/vimfiles.git'
    Plug 'git://github.com/dewrich/socketIO-client.git'
    Plug 'https://github.com/dewrich/mru.vim.git'
    Plug 'git://github.com/benmills/vimux.git'
    Plug 'git://github.com/fatih/vim-go.git'
    "Plug 'git://github.com/Valloric/YouCompleteMe.git'
    Plug 'git://github.com/golang/lint.git'
    "Plug 'git://github.com/Lokaltog/powerline.git'
    Plug 'git://github.com/bling/vim-airline.git'
    Plug 'git://github.com/dewrich/vim-easygrep.git'
    Plug 'git://github.com/rdunklau/vim-perltidy.git'
    Plug 'git://github.com/tpope/vim-rbenv.git'
    Plug 'git://github.com/michalliu/sourcebeautify.vim.git'
    Plug 'git://github.com/vim-scripts/perlprove.vim.git'
    "Plug 'git://github.com/Yggdroot/indentLine'
    "Plug 'git://github.com/kien/ctrlp.vim.git'
    Plug 'git://github.com/vim-scripts/ScrollColors.git'
    Plug 'git://github.com/Rykka/InstantRst.git'
    Plug 'git://github.com/Rykka/riv.vim.git'
    Plug 'git://github.com/Rykka/rhythm.css.git'
    Plug 'git://github.com/airblade/vim-gitgutter.git'
    "Plug 'git://github.com/tpope/vim-surround.git'
    Plug 'git://github.com/tpope/vim-repeat.git'
    Plug 'git://github.com/bronson/vim-visual-star-search.git'
	Plug 'mattn/webapi-vim'
	Plug 'cirla/vim-giphy'
	"Plug 'git://github.com/Raimondi/delimitMate.git'
	"Plug 'git://github.com/jiangmiao/auto-pairs.git'
	Plug 'git://github.com/nelstrom/vim-qargs.git'
	"Plug 'git://github.com/davidpthomas/vim4rally.git'
	Plug 'git://github.com/vim-ruby/vim-ruby.git'
	Plug 'git://github.com/vim-scripts/MultipleSearch.git'
	Plug 'git://github.com/OmniSharp/omnisharp-vim.git'
	Plug 'git://github.com/christoomey/vim-tmux-navigator.git'
	Plug 'git://github.com/Shougo/neocomplete.vim.git'
	Plug 'ctrlpvim/ctrlp.vim'
	"Plug 'git://github.com/farazdagi/vim-go-ide.git'
	"Plug 'git://github.com/dgryski/vim-godef.git'
	"Plug 'git://github.com/lrvick/Conque-Shell.git'

	" Add plugins to &runtimepath
	" Track the engine.
	Plug 'SirVer/ultisnips.git'

	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'

	call plug#end()
" }

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

  " Easy window navigation
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
  map <C-x> <C-w>x

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

"let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1

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

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-p> :TmuxNavigatePrevious<cr>

"let g:AutoPairsFlyMode = 1

" For the snipmate plugin
let g:snips_author = 'Dewayne Richardson'
let g:gitgutter_max_signs = 10000

"For Riv (.rst) helper
let traffic_control = { 'path': '/Users/dricha209/projects/github.com/traffic_control/docs' }
let g:riv_projects = [traffic_control]
let g:riv_fold_level = 0
let g:riv_fold_auto_update = 0


"============ vim-go
"let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let rst_syntax_folding = 0
set nofoldenable

" For the NERDTree plugin to start on initial blank screen
"let g:NERDTreeWinPos = "left"
"let g:NERDTreeWinSize=30
"let g:NERDTreeChDirMode=2
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:netrw_liststyle=3
let g:NERDTreeWinSize=25


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

let mapleader = ","
"Vim grep reminder mappings
"" online doc
  "map <Leader>vv  - Grep for the word under the cursor, match all occurences, like |gstar| 
  "map <Leader>vV  - Grep for the word under the cursor, match whole word, like |star| 
  "map <Leader>va  - Like vv, but add to existing list 
  "map <Leader>vA  - Like vV, but add to existing list 
  "map <Leader>vr  - Perform a global search search on the word under the cursor and prompt for a pattern with which to replace it. 
  "map <Leader>vo  - Select the files to search in and set grep options 

" ==================== vim-go  ==================================
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
  map <C-n> :cn<CR>
  map <C-m> :cp<CR>
  "You can add some shortcuts to make it easier to jump between errors in
  "quickfix list:
  nnoremap <leader>a :cclose<CR>
  nnoremap <silent> <Leader>gf :GoDecls<cr>
  nnoremap <silent> <Leader>gfd :GoDeclsDir<cr>

  "" vim-go config
  "Sometimes when using both vim-go and syntastic Vim will start lagging while
  "saving and opening files. The following fixes this:
  let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }

  "Another issue with vim-go and syntastic is that the location list window
  "that contains the output of commands such as :GoBuild and :GoTest might not
  "appear. To resolve this:
  let g:go_list_type = "quickfix"

  "au FileType go nmap <Leader>gv <Plug>(go-vet)

"}

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
    "map ,l 1yiwo$self->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
    map ,mm 1yiwo$mojo->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
    map ,gs 1yiwofmt.Println("<Esc>pa #-> %s", <Esc>pa)<Esc>==
    "map ,gv 1yiwofmt.Println("#-> %+v", <Esc>pa )<Esc>==
	map ,l  <Esc>:!lua %<CR>
    map ,lp 1yiwoprint("<Esc>pa #-> " , <Esc>pa<Esc>))==
	map ,r  <Esc>:!perl %<CR>
	map ,b  <Esc>:!bash %<CR>
	map ,ri  <Esc>:popup Riv.Insert<CR>
	map ,ir  <Esc>:InstantRst<CR>
	map ,pt  <Esc>:!prove -v %<CR>
	map ,u  <Esc>:!ctags `find . -name "*.pm"`<CR>
    map ,j :%!python -m json.tool<CR>
    map ,w :vertical res 30<CR>

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
	nnoremap <silent> <Leader>d :GoDeclsDir<cr>

	"Yanking lines is inconsistent
	nnoremap Y y$

	" Search anything 'visually' selected with '//'
	vnoremap // y/<C-R>"<CR>

	let $PATH = "/Users/dricha209/projects/go/bin:".$PATH
	let $GOPATH = "/Users/dricha209/projects/go"
	let g:go_gorename_bin = expand("/Users/dricha209/projects/go/bin/gorename")
	let g:go_bin_path = expand("/Users/dricha209/projects/go/bin")
	let g:ruby_path = system('echo $HOME/.rbenv/shims')

    "map <C-V> y$o<esc>pI:r!<esc>"add@a
    "map <C-H> :noautocmd vimgrep ;/ & ;/g **/*
" }

let g:neocomplete#enable_at_startup = 1

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
colorscheme less
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"Fatih tips
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" ==================== Fugitive ====================
vnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>gbl :Gblame<CR>

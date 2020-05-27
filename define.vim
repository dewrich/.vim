au BufRead,BufNewFile *.go set filetype=go 
au BufReadPost *.ep set syntax=html
au BufRead /tmp/psql.edit.* set syntax=sql
au BufWinLeave * silent! mkview    " make vim save view (state) (folds, cursor, etc)
au BufWinEnter * silent! loadview  " make vim load view (state) (folds, cursor, etc)

" VIM Resources
" https://hackernoon.com/vim-is-the-perfect-ide-c226d7ed6d88 
"let g:loaded_python_provider = 1
let s:giphy_api_key = 'dc6zaTOxFJmzC'
let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:impact_transbg=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"colorscheme vim-framer-syntax
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

let s:giphy_api_key = 'dc6zaTOxFJmzC'

" Setting up the directories {
  "" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'
au BufWinLeave * silent! mkview    " make vim save view (state) (folds, cursor, etc)
au BufWinEnter * silent! loadview  " make vim load view (state) (folds, cursor, etc)

"let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1

"Ansible
let g:ansible_options = {'ignore_blank_lines': 0}

"For Riv (.rst) helper
let traffic_control = { 'path': '/Users/dewayne.richardson/projects/github.com/traffic_control/docs' }
let g:riv_projects = [traffic_control]
let g:riv_fold_level = 0
let g:riv_fold_auto_update = 0


" Indent Line Color plugin
let g:indentLine_color_gui = '#A4E57E' 

autocmd StdinReadPre * let s:std_in=1

" Source the vimrc file after saving it
"if has("autocmd")
"  autocmd bufwritepost .vimrc source $MYVIMRC
"endif

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

let $PATH = "/Users/dewayne.richardson/projects/go/bin:".$PATH
let $GOPATH = "/Users/dewayne.richardson/projects/go"
let g:go_gorename_bin = expand("/Users/dewayne.richardson/projects/go/bin/gorename")
let g:go_bin_path = expand("/Users/dewayne.richardson/projects/go/bin")
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:dev = "postgres://traffic_ops:twelve@localhost:5432/to_development"
let g:test = "postgres://traffic_ops:twelve@localhost:5432/to_test"

let g:acp_enableAtStartup = 0

" Fatih tips
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

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

let g:db_ui_auto_execute_table_helpers = 1

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Disable the main.go open file template
let g:go_template_autocreate = 0

let mapleader = ","
"let g:go_auto_type_info = 1
let g:go_def_mode = 'gopls'
"let rst_syntax_folding = 0
"set nofoldenable

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 1

nmap <silent> <C-P>  <Plug>GoldenViewPrevious
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gv <Plug>(go-metalinter)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gdvv <Plug>(go-doc-vertical)
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
au FileType go nmap <Leader>gdv <Plug>(go-def-split)
au FileType go nmap <Leader>gds <Plug>(go-def-vertical)
au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
au FileType go nmap <Leader>ge <Plug>(go-rename)
au FileType go inoremap <Leader>. <C-x><C-o>

" vim-go (guru)
au FileType go nmap <Leader>gim <Plug>(go-implements)
"You can add some shortcuts to make it easier to jump between errors in
"quickfix list:
nnoremap <leader>a /{{.*}}<CR>
nnoremap <silent> <Leader>g :Grepper -cword -noprompt<CR>
nnoremap <silent> <Leader>gf :GoDecls<CR>
nnoremap <silent> <Leader>gie :GoIfErr<CR>
nnoremap <silent> <Leader>gfd :GoDeclsDir<CR>
nnoremap <silent> <Leader>cn :cn<CR>
nnoremap <silent> <Leader>cp :cp<CR>
nnoremap <silent> <Leader>w :silent vertical resize 35<CR>
"nnoremap <silent> <Leader>ggt :GitGutterToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>ff :FZF --no-sort --reverse --inline-info <CR>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" source $MYVIMRC reloads the saved $MYVIMRC
map <Leader>v :source $MYVIMRC \| :nohls
"map <F1> :vertical ball<CR>
"set pastetoggle=F2
"map <F2> :set nocursorline nocursorcolumn<CR>
map <F2> :GundoToggle<CR>
map <F3> :QuickRun<CR>
map <F4> :silent 1,$!~/.vim/rubybeautifier.rb<CR>
map <F5> :vertical silent res +3<CR>
map <F6> :vertical silent res -3<CR>
map <F7> :res +1<CR>
map <F8> :res -1<CR>
"map <silent> <F9> call SplitResize()<CR>
"map <silent> <F9> :NERDTreeToggle .<CR>
"map <silent> <F9> :NERDTreeToggle %:p:h<CR>
"map <Leader>sp :set paste <CR>
"map <F10> :set paste<CR>
map <F12> :set number!<CR>

"   COMBO KEYS
" RUBY Generates a puts "var #-> #{var}"
"map <C-D> yiwoputs "<Esc>pa #-> #{<Esc>pa.inspect}"<Esc>
map <C-C> :s/^/#/g \| :nohlsearch<CR>
map <C-D> yiwolog.Debugln("%v-->",<Esc>pa)<Esc>
map <C-E> yiwofmt.Printf("<Esc>pa ---> %v\n", <esc>pa)<Esc>
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
"map <C-L> yiwo#TODO dewayne.richardson -  <Esc>
"map <C-D> yiwodef <Esc>pa <Esc>yiwoend<Esc>2kddo
""map <C-T> :FufFile<CR>
"map <C-E> :vertical silent res -60<CR>
"map ,pd 1yiwoprint "<Esc>pa #-> (" . Dumper($<Esc>pa) . ")\n";<Esc>==
"map ,p 1yiwoprint "<Esc>pa #-> (" . $<Esc>pa . ")\n";<Esc>==
map ,ld 1yiwo$self->app->log->debug("<Esc>pa #-> " . Dumper($<Esc>pa));<Esc>==
map ,mmd 1yiwo$mojo->app->log->debug("<Esc>pa #-> " . Dumper($<Esc>pa));<Esc>==
"map ,l 1yiwo$self->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
map ,mm 1yiwo$mojo->app->log->debug("<Esc>pa #-> " . $<Esc>pa);<Esc>==
map ,gs 1yiwofmt.Println("<Esc>pa #-> %s", <Esc>pa)<Esc>==
"map ,gv 1yiwofmt.Println("#-> %+v", <Esc>pa )<Esc>==
map ,l  <Esc>:!lua %<CR>
"map ,lp 1yiwoprint("<Esc>pa #-> " , <Esc>pa<Esc>))==
map ,lp yiwoprint("<Esc>pa: " , <Esc>pa)<Esc>==
map ,r  <Esc>:!perl %<CR>
map ,b  <Esc>:!bash %<CR>
map ,ri  <Esc>:popup Riv.Insert<CR>
map ,ir  <Esc>:InstantRst<CR>
map ,t  <Esc>:Term go test -v<CR>
map ,u  <Esc>:!ctags `find . -name "*.pm"`<CR>
map ,j :%!python -m json.tool<CR>
map ,w :vertical res 30<CR>
map cs ysiw

" Rails Demo Shortcuts
"map <C-X> yiworespond_to :html, :xml, :json
"map <C-X> :%!xmllint --format -<CR>
map <C-Y> yiwo<enter>respond_with(@servers) do \|format\|<enter>format.xml  { render :xml => @servers }

"map <C-V> yiwovalidates :first_name, :presence => true
"map <C-I> yiwovalidates :ipaddress, :presence => true, :uniqueness => true, :format => { :with => Resolv::IPv4::Regex }
"map <C-O> yiwo<%= f.collection_select("owner_id", @owners, "id", "first_name") %>

"Unite mappings
"nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<CR>
nnoremap <Leader>f :Unite grep:.<CR>
nnoremap <silent> <Leader>d :GoDeclsDir<CR>

"Yanking lines is inconsistent
nnoremap Y y$

" Search anything 'visually' selected with '//'
vnoremap // y/<C-R>"<CR>
vnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>gbl :Gblame<CR>


"map <C-V> y$o<esc>pI:r!<esc>"add@a
"map <C-H> :noautocmd vimgrep ;/ & ;/g **/*
" =================== vipsql =====================
" Starts an async psql job, prompting for the psql arguments.
" Also opens a scratch buffer where output from psql is directed.
noremap <leader>po :VipsqlOpenSession<CR>
noremap <leader>pd :VipsqlOpenSession -U traffic_ops -h localhost to_development && :set nowrap<CR>
noremap <leader>pt :VipsqlOpenSession -U traffic_ops -h localhost to_test && :set nowrap<CR>

" Terminates psql (happens automatically if the scratch buffer is closed).
noremap <silent> <leader>pk :VipsqlCloseSession<CR>

" In normal-mode, prompts for input to psql directly.
nnoremap <leader>ps :VipsqlShell<CR>

" In visual-mode, sends the selected text to psql.
vnoremap <leader>ps :VipsqlSendSelection<CR>

" Sends the selected _range_ to psql.
noremap <leader>pr :VipsqlSendRange<CR>

" Sends the current line to psql.
noremap <leader>pl :VipsqlSendCurrentLine<CR>

" Sends the entire current buffer to psql.
noremap <leader>pb :VipsqlSendBuffer<CR>

" Sends `SIGINT` (C-c) to the psql process.
noremap <leader>pc :VipsqlSendInterrupt<CR>

" In normal-mode, prompts for input to psql directly.
nnoremap <leader>md :MarkdownPreview<CR>

autocmd FileType puml nnoremap <buffer> <leader>b :!java -jar ~/bin/java/bin/plantuml.jar -o %:p:h %<cr>

let g:exchange_no_mappings=1
nmap cx <Plug>(Exchange)
vmap X <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)

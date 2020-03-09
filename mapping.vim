let mapleader = ","
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" to copy the visual selection to the System clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
"Vim grep reminder mappings
"" online doc
"map <Leader>vv  - Grep for the word under the cursor, match all occurences, like |gstar| 
"map <Leader>vV  - Grep for the word under the cursor, match whole word, like |star| 
"map <Leader>va  - Like vv, but add to existing list 
"map <Leader>vA  - Like vV, but add to existing list 
"map <Leader>vr  - Perform a global search search on the word under the cursor and prompt for a pattern with which to replace it. 
"map <Leader>vo  - Select the files to search in and set grep options 

" ==================== NerdTree  ==================================
" For the NERDTree plugin to start on initial blank screen
"let g:NERDTreeWinPos = "left"
"let g:NERDTreeWinSize=30
"let g:NERDTreeChDirMode=2
"let g:NERDTreeMapOpenVSplit=50
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let g:netrw_liststyle=3
"let g:NERDTreeWinSize=10

" ==================== vim-go  ==================================
"============ vim-go
"let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1
"let rst_syntax_folding = 0
"set nofoldenable

au BufRead,BufNewFile *.go set filetype=go 
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

"echo "mapping.vim"

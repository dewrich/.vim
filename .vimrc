" ===== Plug Packages
  call plug#begin('~/.vim/plugged')
    Plug 'https://github.com/fatih/vim-go'
	Plug 'https://github.com/SirVer/ultisnips'
	Plug 'https://github.com/OmniSharp/omnisharp-vim'
    Plug 'https://github.com/golang/lint'
    Plug 'https://github.com/dewrich/L9'
	Plug 'https://github.com/ctrlpvim/ctrlp.vim'
    Plug 'https://github.com/Shougo/neocomplete.vim'

	" My 2 cents
	Plug 'https://github.com/scrooloose/nerdcommenter'
    Plug 'https://github.com/dewrich/vim-fugitive'
    Plug 'https://github.com/airblade/vim-gitgutter'
  call plug#end()
 
" ==================== vim-go  ==================================
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
  let g:go_fmt_command = "goimports"
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_fmt_autosave = 1

  let g:go_auto_type_info = 1
  let g:go_auto_sameids = 1
  let rst_syntax_folding = 0
  set nofoldenable

  let g:go_snippet_case_type = "camelcase"

  let mapleader = ","
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

  " vim-go (guru)
  au FileType go nmap <Leader>gim <Plug>(go-implements)
  "You can add some shortcuts to make it easier to jump between errors in
  "quickfix list:
  nnoremap <leader>a :cclose<CR>
  nnoremap <silent> <Leader>gf :GoDecls<CR>
  nnoremap <silent> <Leader>gfd :GoDeclsDir<CR>
  nnoremap <silent> <Leader>cn :cn<CR>
  nnoremap <silent> <Leader>cp :cp<CR>

  "" vim-go config
  "Sometimes when using both vim-go and syntastic Vim will start lagging while
  "saving and opening files. The following fixes this:
  let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }

  "Another issue with vim-go and syntastic is that the location list window
  "that contains the output of commands such as :GoBuild and :GoTest might not
  "appear. To resolve this:
  let g:go_list_type = "quickfix"

" =================== NEOCOMPLETE =====================
  let g:neocomplete#enable_at_startup = 1

" =================== CTRLP =====================
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'CtrlP'
  set wildignore+=*/local,*/tmp/*,*.so,*.swp,*.zip 

  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links',
	\ }

  let g:ctrlp_user_command = 'find %s -type f'   
  nnoremap <silent> <C-p> :CtrlP<CR>
  nnoremap <silent> <Leader>p :CtrlP<CR>

" ===============================================================
" Custom configs

  filetype plugin indent on                " Automatically detect file types.
  syntax on                                " syntax highlighting
  set formatoptions=croq          " (fo) influences how vim automatically formats text
  set hidden        "opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
  set history=5000                     " Store a ton of history (default is 20)

  "Can't backspace past start of operation
  set backspace=indent,eol,start

  set tabstop=4                        " tabstops
  set shiftwidth=2                     " shift width
  set tabpagemax=15                    " only show 15 tabs
  set showmode                         " display the current mode
  set cursorline                       " highlight current line
  hi cursorline guibg=#333333          " highlight bg color of current line
  hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=lightblue ctermbg=lightgray 
  hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE gui=NONE guibg=#2d2d2d guifg=NONE
  set incsearch                   " find as you type search
  set hlsearch                    " highlight search terms

  " remaps the semi-colon to colon
  nnoremap ; :            
  map <silent> ,/ :nohlsearch<CR>

  " Easy window navigation
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
  map <C-x> <C-w>x

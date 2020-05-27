
call plug#begin('~/.vim/plugged')

    " My Bundles here:
    " original repos on github
    Plug 'git://github.com/rstacruz/sparkup'

    " vim-scripts repos
    "Plug 'goldfeld/ctrlr.vim'
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
    "Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
    "Plug 'honza/vim-snippets'

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
    Plug 'tommcdo/vim-exchange'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'sjl/badwolf', { 'as': 'badwolf' }
    Plug 'mhinz/vim-janah', { 'as': 'janah' }
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'


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
call plug#end()

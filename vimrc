" Wrap too long lines
set wrap

" Tabs are x characters
set tabstop=4

" (Auto)indent uses x characters
set shiftwidth=4

" spaces instead of tabs
set noexpandtab

" guess indentation
set autoindent

" Expand the command line using tab
set wildchar=<Tab>

" show line numbers
set number

" Fold using markers {{{
" like this
" }}}
set foldmethod=marker

" enable all features
set nocompatible

" powerful backspaces
set backspace=indent,eol,start

" highlight the searchterms
set hlsearch

" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase

" don't wrap words
set textwidth=0

" history
set history=50

" 1000 undo levels
set undolevels=1000

" show a ruler
"set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" write before hiding a buffer
set autowrite

" disable swapfiles (dangerous?)
set noswapfile

" enable mouse scroll and visual selection
set mouse=a
" set minimum window height to 0 (takes less space)
set wmh=0

" auto-detect the filetype
filetype plugin indent on

" syntax highlight
syntax on

" we use a dark background, don't we?
set bg=dark
highlight LineNr ctermbg=DarkGrey

" Always show the menu, insert longest match
"set completeopt=menuone,longest

"set browsedir=buffer

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" changed mappings
noremap ; :
"nmap <F2> :TagbarToggle<CR>
"imap <C-Space> <C-x><C-o>


" codebase browsing configuration
" set tags=/user/c.skrzynski/tags

"source ~/cscope/cscope_maps.vim
"if has("cscope")
"    set nocscopeverbose
"    cs add ~/cscope/test.out
"    set cscopeverbose
"endif

" show current function name
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

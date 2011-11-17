" 256 colors

set t_Co=256

" highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhiteSpace /\s\+$/
" :au InsertLeave * match ExtraWhiteSpace /\s\+\%#\@<!$/

" highlight do not commit mark
:highlight DoNotCommit ctermbg=red guibg=red
:match DoNotCommit /DONOTCOMMIT/

" Restore your cursor position in a file over several editing sessions.
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
au BufEnter COMMIT_EDITMSG :normal 1G

" no annoying sounds
set noerrorbells
set visualbell t_vb=

set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P

" Always show a status line
set laststatus=2
"make the command line 1 line high
set cmdheight=1

highlight flicker cterm=bold ctermfg=white
au CursorMoved <buffer> exe 'match flicker /\V\<'.escape(expand('<cword>'), '/').'\>/'

inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

" Folding Stuffs
set foldmethod=marker

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Syntax highlighting turned on
syntax on

" PHP syntax check
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

" Spaces are better than a tab character
set expandtab
set tabstop=4
set smarttab
set smartindent

" Who wants an 8 character tab?  Not me!
set shiftwidth=4
" set softtabstop=3

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Real men use gcc
"compiler gcc

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4



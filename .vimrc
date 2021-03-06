" ==========================================================
" Vim settings - nDoorn
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype

set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd                   " Show the to be executed command
set encoding=utf-8            " Use an encoding that supports unicode
set ruler                     " Always show cursor position
set nolazyredraw              " No screen update during marco & script execution
set showmatch                 " Show matching brackets
set laststatus=2              " Always display the status bar
set scrolloff=2               " Nr of lines to show below/above cursor
set nowrap                    " Disable line wrapping
set hlsearch                  " Highlight all search results
"set relativenumber            " Enable relative line numbers

set tabstop=2                 " Indent using <nr> spaces
set shiftwidth=2              " When shifting, indent using <nr> spaces
set softtabstop=2             " Nr of spaces thta a <tab> count for while
                              " performing editing operations.
set expandtab                 " Convert tabs to spaces

" Set up ruler
set colorcolumn=80,100
highlight ColorColumn ctermbg=234 guibg=darkgray

" Set line number highlighting
hi LineNr ctermfg=1
hi CursorLineNr ctermbg=1 cterm=NONE ctermfg=NONE
hi CursorLine cterm=NONE ctermfg=NONE
set cursorline

" Automatically remove all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

highlight gitcommitSummary ctermbg=blue ctermfg=black

au BufNewFile,BufFilePre,BufRead *.md set
  \ filetype=markdown

au FileType markdown set
  \ colorcolumn=0
  \ textwidth=0
  \ wrap

au FileType gitcommit set
  \ tw=72
  \ tabstop=2
  \ shiftwidth=2
  \ softtabstop=2
  \ expandtab
  \ colorcolumn=72

au FileType python set
  \ tabstop=4
  \ shiftwidth=4
  \ softtabstop=4
  \ textwidth=80

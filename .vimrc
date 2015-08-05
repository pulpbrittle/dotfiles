set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')
Bundle 'gmarik/Vundle.vim'
Bundle 'vim-scripts/vim-auto-save'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-surround'
Bundle 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on

set number
syntax on

" Clear the shell's screen and execute the python program when the <F9> key is pressed
noremap <buffer> <F9> :exec '!printf "\033\143" && python3' shellescape(@%, 1)<cr>

" Display the status line *always*
set laststatus=2
let g:solarized_termcolors=256
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" Display the cursor line
set cursorline
hi CursorLine ctermbg=255 cterm=None gui=None
hi CursorLineNr ctermbg=255 cterm=None gui=None

" Display the color column
set colorcolumn=80

" Display a warning if &paste is set
"set statusline+=%#error#
"set statusline+=%{&paste?'[paste]':''}
"set statusline+=%*

"set statusline+=\ %t%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\&bomb)?\",B\":\"\")}%k\|%{&filetype}}%)\ %([%l,%v][%p%%]\ %)

set nofoldenable
" Enable JS syntax highliting
au FileType javascript call JavaScriptFold()

" Set the colorscheme
colorscheme kolor

nnoremap ; :
nnoremap : ;

let g:used_javascript_libs = 'jquery'
set autoindent
set smartindent
set cindent
inoremap { {<CR>}<up><end><CR>

execute pathogen#infect()

set cursorline
set number
"set relativenumber

set backspace=2
set shellredir=>

filetype plugin indent on
syntax enable

let g:solarized_termcolors=16
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Unmap arrow keys
"no <up> <Nop>
"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>

"ino <up> <Nop>
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"exception for package.json
autocmd BufRead,BufNewFile package.json set ts=2 sts=2 sw=2

"show trailing whitespace
match Todo /\s\+$/

let jshint2_height = 8
let jshint2_save = 1

cabbr %% <C-R>=expand('%:p:h')<CR>

"common misspellings
iab cpnsole console

" whitelist all local vimrc files in users project foo and bar
let g:localvimrc_whitelist='/Users/regular/dev/lad/.lvimrc'


"actano specifics
let mapleader = " "
nnoremap <leader>fic :Ag -G coffee 
nnoremap <leader>ficnt :Ag -G coffee --ignore test

"shecodes stuff
map <F2> :.! xargs -I % curl https://github.com/%.keys<CR>

"map keystrokes ",ls" to an ex mode command that
"inserts the listing of the current directory into the buffer
map ,ls :r !ls<CR>

"Execute the current line in the buffer as an ex-mode command
"(great for testing stuff in your .vimrc)

"Example:
" Write the word "write" or "w" in a new line and exit insert mode
" type ",ex" to execute write (save the file)
map ,ex yy:@"<CR>
map ,today :r!date "+\%Y-\%m-\%d"<CR>
map ,reldate :r!date "+\%Y-\%m-\%d -v"

" set filetype for filenames ending with .cal
au BufRead,BufNewFile *.cal set filetype=cal


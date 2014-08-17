"Turn off plugins by adding to this list with the call lines
let g:pathogen_disabled = []
"Example
"call add(g:pathogen_disabled, 'ack')

"PLUGINS
"snipmate adds snippets of code for you to fill out
"surround helps deal with surroundings -- parenthesis, etc.
"fugitive is the best git wrapper for working with git
"NERDTree makes it possible to view directories as a tree in vim
"gundo graphs vim's undo tree to make is usable by humans
"Tasklist searches the file for FIXME, TODO, and XXX and lists them

"Pathogen manages all plugins for vim
execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99

" Always show line numbers, but only in current window
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

"Bind gundo key
map <leader>g :GundoToggle<CR>


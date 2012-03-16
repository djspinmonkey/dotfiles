" John Hyland's .vimrc file
"
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" load extra bundles (eg, coffescript support is installed this way)
call pathogen#runtime_append_all_bundles()

" Change the leader character to comma, since it's easier to reach than backspace
let mapleader = ","

set bs=2		      " allow backspacing over everything in insert mode
set ai			      " always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
                      " than 50 lines of registers
set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set laststatus=2  " always have a status line
set expandtab     " use spaces instead of tab character
set smarttab      " delete white space in 'tabs' at the beginning of a line
set tabstop=2     " tabs are 2 spaces long
set softtabstop=2 " tabs are 2 spaces long
set shiftwidth=2  " set autoindent width to 2
set nohlsearch    " turn off search hiliting
set vb            " turn on the visual beep (screen flash instead of actual beep)
set autowrite     " write before calling an external file - good for spellchecking
set bg=dark       " assume there's a dark background, regardless of $TERM

" how to 'open' a URL - Mac-specific!
:command -bar -nargs=1 OpenURL :!open <args>

" allow local help files
helptags ~/.vim/doc

" grep is awesome
set grepprg=ack
set grepformat=%f:%l:%m

" quick toggle for NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" rails.vim shortcuts
map <leader>m :execute 'Rmodel'<CR>
map <leader>v :execute 'Rview'<CR>
map <leader>c :execute 'Rcontroller'<CR>
map <leader>u :execute 'Runittest'<CR>
map <leader>f :execute 'Rfunctionaltest'<CR>

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" ruby autotest integration
"compiler ruby         " Enable compiler support for ruby
compiler rubyunit
nmap <Leader>fd :cf /tmp/autotest.txt<cr> :compiler rubyunit<cr>

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Try not to lose the context for syntax hilighting.  This should really be
" set in the individual syntax files, but it often isn't (boo).  If this isn't
" sufficient, we can use fromstart instead of minlines
autocmd BufEnter * :syntax sync minlines=200

" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78

" recognize some extra ruby extensions
autocmd BufRead *.rake set filetype=ruby
autocmd BufRead *.spec set filetype=ruby
autocmd BufRead *.erb  set filetype=eruby
autocmd BufRead *.rjs  set filetype=ruby
autocmd BufRead Capfile set filetype=ruby

" Gui vim configurations
if has("gui_running")
  set guioptions=aegmR
  set guifont=Menlo:h12
  highlight Normal guifg=white guibg=black  " I typically roll with white-on-black text.
endif

" syntax highliting - must have!
syntax on

" Show trailing whitespace - apparently some people care
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLEave * redraw!

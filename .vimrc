" 80 characters line
set colorcolumn=81
" "execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed
" Highlight trailing spaces
" " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set t_Co=256

syntax on

" Show line numbers
set number

" relative numbering
set relativenumber

" Show file stats
" set ruler

" Encoding
set encoding=utf-8

" tags lookup
set tags=./tags,tags;

set list lcs=tab:\|\ 

syntax enable

" set colorscheme
colorscheme molokai

" colorscheme transparency
:hi Normal ctermbg=none
:hi LineNr ctermbg=none
:hi NonText ctermbg=none

" Color line numbers
:hi LineNr ctermfg=yellow

" highlight current line
set cursorline

" set statusline theme https://github.com/vim-airline/vim-airline-themes
" let g:airline_theme='simple'
let g:airline_theme='lucius'

" set path for fzf
set rtp+=~/.fzf

" change line numbering
nmap <silent> <F7> :set number! relativenumber!<CR>
nmap <silent> <leader><F7> :set relativenumber!<CR>

" Tagbar keybindings
nmap <silent> <F9> :TagbarToggle<CR>
nmap <silent> <F8> :TagbarClose<CR>:let g:tagbar_left = 1<CR>:TagbarOpen<CR>
nmap <silent> <F10> :TagbarClose<CR>:let g:tagbar_left = 0<CR>:TagbarOpen<CR>

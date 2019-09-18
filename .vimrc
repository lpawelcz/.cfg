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

" Show file stats
set ruler

" Encoding
set encoding=utf-8

set tags=./tags,tags;

set list lcs=tab:\|\ 

" Enable NERDTree
"autocmd vimenter * NERDTree

syntax enable
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
colorscheme molokai
" let g:molokai_original = 1

" set statusline theme https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='simple'
" Color scheme (terminal)
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1

" set path for fzf
set rtp+=~/.fzf

" FZF keybindings
nmap <silent> <F6> :Files<CR>
nmap <silent> <F7> :Buffers<CR>
" Tagbar keybindings
nmap <silent> <F8> :TagbarClose<CR>:let g:tagbar_left = 1<CR>:TagbarOpen<CR>
nmap <silent> <F9> :TagbarToggle<CR>
nmap <silent> <F10> :TagbarClose<CR>:let g:tagbar_left = 0<CR>:TagbarOpen<CR>

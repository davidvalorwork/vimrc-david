set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set bg=dark
colorscheme dracula
let g:gruvbox_contrast_dark = "hard"
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='base16_dracula'
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
set laststatus=2
set noshowmode

au BufNewFile,BufRead *.html set filetype=htmldjango

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


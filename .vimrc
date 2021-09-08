set nocompatible
set nolist
set rnu
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
"filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
"set wrap
" Vim's auto indentation feature does not work properly with text copied
"from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the
"width of your screen.
"set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump
"between them.
set matchpairs+=<:>

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
"set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text,
"100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100
" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
 " Automatically save and load folds


" Nerd Commenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Keys
let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>gs :Ack 
noremap <leader>fs :FZ<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>
vnoremap <Space> zf
noremap <leader>m :mksession! lastsession.vim <cr>
noremap <leader>qa :qa!<cr>
noremap <leader>tn :tabnew<cr>
noremap <leader>tc :tabc<cr>
noremap <leader>te :term<cr>
noremap <leader>h :tabp<cr>
noremap <leader>l :tabn<cr>
noremap <leader>e :edit 
noremap <leader>n :NERDTreeToggle<cr>
nmap <silent> <Left> :vertical resize -2 <cr>
nmap <silent> <Right> :vertical resize +2  <cr>
nmap <silent> <Up> :resize -2 <cr>
nmap <silent> <Down> :resize +2 <cr>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs <Plug>(easymotion-overwin-f2)
nmap <leader> fo <Plug>(coc-format-selected)
noremap <Leader>s :Gblame<enter>
noremap <leader>cd :cd 
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif
        call plug#begin('~/.vim/plugged')
          Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
          Plug 'pangloss/vim-javascript'    " JavaScript support
          Plug 'akz92/vim-ionic2'
          Plug 'leafgarland/typescript-vim' " TypeScript syntax
          Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
          Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
          Plug 'easymotion/vim-easymotion'
          Plug 'christoomey/vim-tmux-navigator'
          Plug 'morhetz/gruvbox'
          Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
					Plug 'zivyangll/git-blame.vim'
					Plug 'vim-airline/vim-airline'
					Plug 'vim-airline/vim-airline-themes'
					Plug 'https://github.com/tpope/vim-fugitive'
					Plug 'mattn/emmet-vim'
					Plug 'frazrepo/vim-rainbow'
					Plug 'preservim/nerdcommenter'
					"Plug 'micha/vim-colors-solarized'
					Plug 'joshdick/onedark.vim'
					Plug 'mileszs/ack.vim'
        call plug#end()
        let g:coc_global_extensions = ['coc-css','coc-angular','coc-html','coc-tsserver','coc-css']
        let g:fzf_preview_window = []
        let NERDTreeQuitOnOpen=1
				let g:airline#extensions#tabline#enabled = 1
				let g:airline#extensions#tabline#formatter = 'unique_tail'
        colo onedark
				"set cursorline
				set nocursorline
        set bg=dark

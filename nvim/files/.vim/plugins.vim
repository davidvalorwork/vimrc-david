call plug#begin('~/.vim/plugged')

" syntax
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sjl/badwolf'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'fcpg/vim-fahrenheit'

" Tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'preservim/tagbar'
Plug 'github/copilot.vim'

call plug#end()

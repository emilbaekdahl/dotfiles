let g:ale_completion_enabled = 1

call plug#begin('~/.vim/plugged')
Plug 'roxma/nvim-yarp'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/vim-jsx-improve'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'janko/vim-test'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'
Plug 'iamcco/markdown-preview.nvim', {  'for': 'markdown', 'do': 'cd app & yarn install' }
call plug#end()

filetype plugin on
filetype indent on

set encoding=UTF-8
set termguicolors
set number relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set foldmethod=indent
set nofoldenable
set smartindent
set cursorline
set omnifunc=ale#completion#OmniFunc

syntax on

colorscheme onehalfdark

let mapleader = " "
let maplocalleader = ","

" vimtex
let g:tex_flavor = "latex"
let g:vimtex_view_method = "skim"
let g:vimtex_compiler_progname = "nvr"
let g:vimtex_complete_recursive_bib = 1

" vim-airline
let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts = 1

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['.DS_STORE']

" Key mappings
nnoremap <esc> :noh<return><esc>
nnoremap <C-p> :Files <return>
nnoremap <C-k> :NERDTreeFind <return>
nnoremap * *``
nnoremap <leader>gdd :ALEGoToDefinition<return>
nnoremap <leader>gds :ALEGoToDefinitionInSplit<return>
nnoremap <leader>hh :ALEHover<return>

" vim-test
let test#strategy = "neovim"

" ale
let g:ale_fix_on_save = 1

let g:ale_python_auto_pipenv = 1

let g:ale_linters = {
\   'python': ['pyls', 'flake8'],
\   'ruby': ['solargraph', 'rubocop'],
\   'javascript': ['tsserver'],
\   'tex': ['chktex'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['isort', 'black'],
\   'ruby': ['rubocop'],
\   'javascript': ['importjs', 'prettier'],
\}

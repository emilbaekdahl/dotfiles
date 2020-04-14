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
Plug 'tpope/vim-liquid'
Plug 'wlangstroth/vim-racket'
Plug 'luochen1990/rainbow'
Plug 'neovimhaskell/haskell-vim'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp'] }
Plug 'bfrg/vim-cpp-modern', { 'for': ['cpp'] }
Plug 'honza/vim-snippets'
Plug 'adimit/prolog.vim'
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'tell-k/vim-autopep8'
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'
call plug#end()

set encoding=UTF-8

filetype plugin on
filetype indent on

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let mapleader = " "
let maplocalleader = ","

" VimTex
let g:tex_flavor = "latex"
let g:vimtex_view_method = "skim"
let g:vimtex_compiler_progname = "nvr"
let g:vimtex_complete_recursive_bib = 1

" vim-airline
let g:airline_powerline_fonts = 1

" coc
set signcolumn=yes
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>rn <Plug>(coc-rename)
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['.DS_STORE']

" ClangFormat
let g:clang_format#auto_format = 1

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
syntax on

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType scheme execute ':RainbowToggle'
autocmd FileType jbuilder set syntax=ruby

" Key mappings
nnoremap <esc> :noh<return><esc>
map <C-p> :Files <Enter>
map <C-k> :NERDTreeFind <Enter>
nnoremap * *``

let g:autopep8_disable_show_diff=1

" Rust
let g:rustfmt_autosave = 1

" vim-test
let test#strategy = "neovim"

" ale
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

let g:ale_python_auto_pipenv = 1

let g:ale_linters = { 'python': ['flake8'] }
let g:ale_fixers = { 'python': ['isort', 'black'] }

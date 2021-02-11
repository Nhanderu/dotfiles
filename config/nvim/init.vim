" Based on:
" https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
" https://github.com/plentiform/go-ide/blob/master/init.vim
" https://github.com/giioohbernini/dotnvim/blob/master/init.vim

call plug#begin()
" Common text stuff.
Plug 'terryma/vim-multiple-cursors'
" File search.
Plug 'junegunn/fzf', { 'do': './install --all --xdg' }
Plug 'junegunn/fzf.vim'
" File browser.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
Plug 'ryanoasis/vim-devicons'
" Languages.
Plug 'sheerun/vim-polyglot'
" Lint.
Plug 'dense-analysis/ale'
" Autocomplete.
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-tern',  { 'do': 'npm install' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Git.
Plug 'tpope/vim-fugitive'
call plug#end()

syntax on
set background=dark
colorscheme darktooth

set undofile
set undodir=~/.local/share/nvim/undodir
set dir=~/.local/share/nvim/swap/

set hidden
set nowrap
set number
set relativenumber
set inccommand=nosplit
set synmaxcol=500
set ttyfast
set regexpengine=1
set colorcolumn=72

let mapleader="\<space>"
nnoremap ; :
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<space>
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 1
let g:rust_clip_command = 'pbcopy'

let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()

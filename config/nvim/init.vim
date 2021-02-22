" Based on:
" https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
" https://github.com/plentiform/go-ide/blob/master/init.vim
" https://github.com/giioohbernini/dotnvim/blob/master/init.vim

call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': './install --all --xdg' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-tern',  { 'do': 'npm install' }
call plug#end()

syntax on
colorscheme darktooth
highlight ColorColumn ctermbg=238

set undofile
set undodir=~/.local/share/nvim/undodir/
set dir=~/.local/share/nvim/swap/
set hidden
set nowrap
set number
set relativenumber
set inccommand=nosplit
set synmaxcol=500
set regexpengine=1
set colorcolumn=80
set ignorecase
set noshowmode

let mapleader="\<c-x>"
nnoremap ; :
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 1
let g:rust_clip_command = 'pbcopy'

let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"

let g:lightline =
    \ { 'colorscheme': 'jellybeans'
    \ , 'active':
    \     { 'left':
    \         [ [ 'mode', 'paste' ]
    \         , [ 'gitbranch', 'readonly', 'filename', 'modified' ]
    \         ]
    \     }
    \ , 'component_function':
    \     { 'gitbranch': 'gitbranch#name' }
    \ }

autocmd FileType gitcommit setlocal textwidth=72
autocmd Filetype gitcommit setlocal colorcolumn=50
autocmd Filetype rust setlocal colorcolumn=100

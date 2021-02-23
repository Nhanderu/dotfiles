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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
call plug#end()

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
set nocompatible

let mapleader="\<c-x>"
nnoremap ; :
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
map H ^
map L $

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'pbcopy'

let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"

let g:coc_global_extensions =
    \ [ 'coc-json'
    \ , 'coc-yaml'
    \ , 'coc-toml'
    \ , 'coc-sql'
    \ , 'coc-sh'
    \ , 'coc-rust-analyzer'
    \ , 'coc-fsharp'
    \ , 'coc-go'
    \ , 'coc-graphql'
    \ , 'coc-markdownlint'
    \ ]

let g:lightline =
    \ { 'colorscheme': 'jellybeans'
    \ , 'active':
    \     { 'left':
    \         [ [ 'mode', 'paste' ]
    \         , [ 'gitbranch', 'filename', 'cocstatus', 'readonly', 'modified' ]
    \         ]
    \     }
    \ , 'component_function':
    \     { 'gitbranch': 'gitbranch#name'
    \     , 'cocstatus': 'coc#status'
    \     }
    \ }

autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.tex set filetype=tex
autocmd FileType gitcommit setlocal spell textwidth=72 colorcolumn=50
autocmd FileType markdown setlocal spell textwidth=72 colorcolumn=50
autocmd FileType text setlocal spell textwidth=72 colorcolumn=50
autocmd Filetype rust setlocal colorcolumn=100
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
autocmd CursorHold * silent call CocActionAsync('highlight')

syntax on
colorscheme darktooth
highlight ColorColumn ctermbg=238
filetype plugin indent on


" Plugins
call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/nerdtree' " NerdTree

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' " Airline themes
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} "Autocompletion

" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
set encoding=UTF-8
call plug#end()



set number
set mouse=a
set smarttab
set shiftwidth=4 " Set the number of spaces for each step of (auto)indent
set tabstop=4 " Set the number of spaces that a <Tab> character counts for
set expandtab " Use spaces instead of tabs
set softtabstop=4 " Number of spaces that a <Tab> counts for while editing
" Enable auto indenting
set autoindent
set smartindent
" set signcolumn=yes:1 " Always show the sign column with a fixed width
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " fix new line on a commented line



"nvim remaps
nnoremap j k
nnoremap k j

vnoremap j k
vnoremap k j

xnoremap j k
xnoremap k j

set clipboard=unnamedplus " Setup clipboard



" Visuals
:set completeopt-=preview " For No Previews

:colorscheme jellybeans "Colorscheme
let g:airline_theme='jellybeans'

let g:airline_powerline_fonts = 1



" NerdTree remaps
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"



" Tagbar remaps
nmap <C-p> :TagbarToggle<CR>



" Airline remaps
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''



" coc.nvim remaps
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Make <C-space> trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call CocAction('doHover')<CR>

" Redefine diagnostic signs to be empty using autocmd to ensure it's applied after Coc.nvim is initialized
autocmd VimEnter * sign define CocError text= texthl=CocError linehl= numhl=
autocmd VimEnter * sign define CocWarning text= texthl=CocWarning linehl= numhl=
autocmd VimEnter * sign define CocInfo text= texthl=CocInfo linehl= numhl=
autocmd VimEnter * sign define CocHint text= texthl=CocHint linehl= numhl=

" Set diagnostic signs to empty in coc-settings.json
let g:coc_user_config = {
    \ 'diagnostic.errorSign': '',
    \ 'diagnostic.warningSign': '',
    \ 'diagnostic.infoSign': '',
    \ 'diagnostic.hintSign': ''
    \}

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



" Neovim remaps
" Remap navigation keys one key to the right
nnoremap j h
" k is mapped properly by default
nnoremap l j
nnoremap ; l

vnoremap j h
" k is mapped properly by default
vnoremap l j
vnoremap ; l

" Remap window movement keys to match new navigation keybindings
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>; <C-w>l

" Also allow Shift with the navigation keys
nnoremap <C-w>J <C-w>H
nnoremap <C-w>K <C-w>J
nnoremap <C-w>L <C-w>K
nnoremap <C-w>: <C-w>L

" Map Ctrl + S to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>

nnoremap U <C-r>
inoremap U <C-r>
vnoremap U <C-r>

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



if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



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

" Popup menu size
set pumwidth=10 " Adjust the width of the popup menu
set pumheight=10 " Adjust the height of the popup menu
set pumblend=10 " Adjust the transparency of the popup menu

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

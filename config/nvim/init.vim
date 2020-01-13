call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdTree'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'brooth/far.vim'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/vim-color-forest-night'
call plug#end()

" NerdTree toggle
nmap <C-n> :NERDTreeToggle<CR>

" Highlight the line where the cursor is
set nocursorline

" Relative line numbers
set number relativenumber

" Tab size
set ts=4 sw=4

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Color scheme
set termguicolors
colorscheme forest-night

" Lightline color scheme
let g:lightline = {'colorscheme' : 'forest_night'}

" Transparency
hi Normal guibg=none ctermbg=none
hi NonText ctermbg=none
hi EndOfBuffer guibg=none

" coc.nvim completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" " "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

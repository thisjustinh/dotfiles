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
Plug 'ayu-theme/ayu-vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
call plug#end()

" ---------------
" Plugin mappings
" ---------------
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-l> :LivedownToggle<CR>

" Highlight the line where the cursor is
set nocursorline

" Relative line numbers
set number relativenumber

" Tab size
set ts=4 sw=4

" --------------
" Copy and Paste
" --------------

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

" ------------
" Color scheme
" ------------
set termguicolors
let ayucolor="mirage"
colorscheme ayu

let g:lightline = {'colorscheme' : 'ayu_mirage'}

" ------------
" Transparency
" ------------
hi Normal guibg=none ctermbg=none
hi NonText ctermbg=none
hi EndOfBuffer guibg=none
hi LineNr guibg=none

" -------------------
" Syntax highlighting
" -------------------
au BufNewFile,BufRead /*.rasi setf css

" -------------
" vimtex config
" -------------
let g:tex_flavor='xelatex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ----------------
" ultisnips config
" ----------------
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/plugged/ultisnips']

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsListSnippets = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" -------------------
" coc.nvim completion
" -------------------
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" " "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

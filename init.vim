:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set clipboard=unnamedplus
set encoding=UTF-8
set fileencoding=utf-8
" set line at 100 characters
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=purple
call plug#begin()
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'airblade/vim-gitgutter' "gitgutter
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'Yggdroot/indentLine'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
Plug 'joshdick/onedark.vim'
" Auto-completion  For Javascript
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier',"coc-tailwindcss"]  " list of CoC extensions needed
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

"Git 
Plug 'tpope/vim-fugitive'
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

:set completeopt-=preview " For No Previews
colorscheme onedark
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"indentLine
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


"gitgutter not work
" This path probably won't work
let g:gitgutter_realtime = 1  
let g:gitgutter_eager = 1
" terminal mode remap to go to normal mode by pressing Esc key
:tnoremap <Esc> <C-\><C-n>


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

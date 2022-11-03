" if use linux ------------------
" call plug#begin($HOME . '/.config/nvim/autoload/plugged')
" if use windows ----------------
call plug#begin($HOME . '/appdata/local/nvim/autoload/plugged')
  Plug 'overcache/NeoSolarized'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'xiyaowong/nvim-transparent'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_section_z = airline#section#create_right(['%P %l/%c'])
let g:airline_theme='base16_solarized_dark'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

let g:transparent_enabled = v:true

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_enabled = 0

let g:fzf_preview_window = ['right,50%', 'ctrl-/']

lua << EOF
vim.opt.termguicolors = true
vim.opt.list = true
EOF

set number
set relativenumber
set clipboard+=unnamedplus
set nocompatible
set encoding=utf-8
set title
set scrolloff=20
set expandtab
set lazyredraw
set mouse=a
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set copyindent
set ignorecase
set nowrap
set laststatus=2
set cmdheight=1
set cursorline
set hidden
set showcmd
set showmatch
set wildmenu
set nobackup
set noswapfile
set termguicolors
set background=dark
colorscheme NeoSolarized

nmap <C-z> <Nop>
map <Space> <leader>
map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>
nnoremap <silent> <leader>jk :Prettier<CR>
nnoremap <silent> sf :Files<CR>
nnoremap <leader>h 0
nnoremap <leader>l $

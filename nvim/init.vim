         
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"                                 @nijatibrahimov

if has('win32')
	nmap <C-z> <Nop>
endif

"plugins
call plug#begin($HOME . '/appdata/local/nvim/autoload/plugged')
  "plugins: ui, nvim-tree, popup, airline
	Plug 'overcache/NeoSolarized'
  Plug 'kyazdani42/nvim-web-devicons' "tree icons
  Plug 'kyazdani42/nvim-tree.lua' "nvim-tree
  Plug 'nvim-lua/popup.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

  "js(jsx/tsx) highlighting/indenting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'maxmellon/vim-jsx-pretty' "FIXME: fix indenting features

  "telescope, fzf setup:
  Plug 'nvim-lua/plenary.nvim' "TODO: read about plenary
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'sudormrfbin/cheatsheet.nvim'
  "TODO: read more about this pluggins:
  "Plug 'ThePrimeagen/harpoon' 
  "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "Plug 'junegunn/fzf.vim'

  "lsp
  "supports:
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  "FIXME: Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  "autocompletion:
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'
  "snippets:
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'
  "lsp setup:
  Plug 'VonHeikemen/lsp-zero.nvim'
call plug#end()


lua <<EOF
-- treesitter setup:
require'nvim-treesitter.configs'.setup {
  auto_install = true,
}
--  nvim-tree setup:
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "<Tab>", action = "" },
        { key = "u", action = "dir_up" },
        { key = "r", action = "rename" },
        { key = "R", action = "refresh" },
        { key = { "<CR>", "<2-LeftMouse>" }, action = "edit" },
        { key = "o", action = "tabnew" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- telescope setup:
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
}
-- FIXME: require('telescope').load_extension('fzf')

-- lsp setup:
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()
EOF

"fundamental
set signcolumn=yes
autocmd!
syntax enable
set number
set clipboard+=unnamedplus
set nocompatible
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set scrolloff=10
set expandtab
set shell=fish
set lazyredraw

"tabs
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set copyindent

"search
set ignorecase

"themes/ui
set nowrap
set laststatus=2
set cmdheight=1
set cursorline
set hidden
set showcmd
set wildmenu
set showmatch
set nobackup
set noswapfile
set termguicolors
set background=dark
let g:neosolarized_italic = 1
let g:neosolarized_termtarns = 1
colorscheme NeoSolarized
let g:airline_theme='solarized_flood'

"mappings:
map <Space> <Leader>
map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>
inoremap jk <esc>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>h 0
nnoremap <leader>l $
"mappings: telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
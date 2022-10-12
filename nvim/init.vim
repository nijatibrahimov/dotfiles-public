" Oct., 2022.

" FUNDAMENTAL
set shell=fish " - linux shell
set signcolumn=yes
autocmd!
syntax enable
set number
set relativenumber
set clipboard+=unnamedplus
set nocompatible
set fileencodings=utf-8,sjis,euc-jp,latin
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
set wildmenu
set showmatch
set nobackup
set noswapfile
set termguicolors
set background=dark

" SETTING
" - prettier setup
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_enabled = 0
" - air-line 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" - mappings
nmap <C-z> <Nop>
map <Space> <Leader>
map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>
inoremap jk <esc>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>h 0
nnoremap <leader>l $
" - mappings: telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" PLUGGINS
" - LINUX
call plug#begin($HOME . '/.config/nvim/autoload/plugged')
" - WINDOWS
" call plug#begin($HOME . '/appdata/local/nvim/autoload/plugged')

  " - themes
  " Plug 'npxbr/gruvbox.nvim'
  " Plug 'srcery-colors/srcery-vim'
  " Plug 'tjdevries/colorbuddy.vim'
  " Plug 'Th3Whit3Wolf/onebuddy'
  " Plug 'projekt0n/github-nvim-theme'
  " Plug 'overcache/NeoSolarized'
  Plug 'rebelot/kanagawa.nvim'

  " - ui
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua' "nvim-tree
  Plug 'nvim-lua/popup.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  Plug 'yamatsum/nvim-cursorline'
  Plug 'xiyaowong/nvim-transparent'

  " - js(jsx/tsx) highlighting/indenting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'maxmellon/vim-jsx-pretty' "FIXME: fix indenting features

  " - prettier
  Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

  " - telescope, fzf setup
  Plug 'nvim-lua/plenary.nvim' "TODO: read about plenary
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'sudormrfbin/cheatsheet.nvim'
  "TODO: read more about this pluggins:
  Plug 'ThePrimeagen/harpoon' 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " - lsp: supports
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'

  " FIXME
  " Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  
  " - autocompletion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  " - snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'

  " - lsp: setup
  Plug 'VonHeikemen/lsp-zero.nvim'

  " - other
  " - read more about this
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
  Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
  Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
  Plug 'https://github.com/lambdalisue/suda.vim/' " Sudo
  Plug 'folke/lsp-colors.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

  colorscheme kanagawa

lua << EOF
vim.opt.laststatus = 3
vim.opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})

require'kanagawa'.setup({
  globalStatus = true,
  dimInactive = true
})

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}-- nvim-transparent setup
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})

-- treesitter setup:
require('nvim-treesitter.configs').setup {
  auto_install = true,
}

--  nvim-tree setup:
require("nvim-tree").setup{
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
        { key = "S", action = "search_node" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

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

-- nvim-cursorline setup
-- ---------------------
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
EOF

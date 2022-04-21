

call plug#begin()
Plug 'overcache/NeoSolarized'
"Plug 'frankier/neovim-colors-solarized-truecolor-only' " I liked the theme provided by this, but it was fixing the color scheme to solarized light and not changing it depending upon the color scheme selected in the terminal
Plug 'nlknguyen/papercolor-theme'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'othree/xml.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'nvie/vim-rst-tables'
"Plug 'philpep/vim-rst-tables'

Plug 'neovim/nvim-lspconfig'
call plug#end()

set termguicolors
"set background=light " or dark
"colorscheme solarized
set background=light

colorscheme NeoSolarized
"colorscheme PaperColor



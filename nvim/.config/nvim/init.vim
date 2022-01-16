

call plug#begin()
Plug 'overcache/NeoSolarized'
"Plug 'frankier/neovim-colors-solarized-truecolor-only' " I liked the theme provided by this, but it was fixing the color scheme to solarized light and not changing it depending upon the color scheme selected in the terminal

Plug 'tpope/vim-fugitive'
call plug#end()

set termguicolors
"set background=light " or dark
"colorscheme solarized

colorscheme NeoSolarized


call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

 " Important!!
        "if has('termguicolors')
        "  set termguicolors
        "endif
	"
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1	
colorscheme gruvbox-material
	
syntax on 
filetype plugin on
filetype indent on
set number 

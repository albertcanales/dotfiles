" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }

" File system explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Airline bar below
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Git wrapper
Plug 'tpope/vim-fugitive'

" Column git indicator
Plug 'airblade/vim-gitgutter'

" Live preview for Markdown
Plug 'shime/vim-livedown'   " Requires npm installation

" Comment blocks of code
Plug 'tpope/vim-commentary'

" Web development tools
Plug 'pangloss/vim-javascript'

" Initialize plugin system
call plug#end()

"" Vim-Plug
call plug#begin(expand('~/.config/nvim/plugged'))

" Aesthetics - Main
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim' , { 'do' : ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'romgrk/doom-one.vim'
Plug 'dense-analysis/ale'

" Functionalities
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

call plug#end()

set background=dark

syntax on
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
highlight Normal guibg=NONE ctermbg=NONE

filetype plugin indent on

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set ruler laststatus=2 showmode
set encoding=utf-8
set title
set gcr=n-i-v-r:blinkon0-blinkoff0
set number
set cursorline
set novisualbell
set noerrorbells
set noshowcmd
set noshowmode
set colorcolumn=79

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

""" Plugin Configurations

" NERDTree
" let NERDTreeShowHidden=1
" let g:NERDTreeDirArrowExpandable = '↠'
" let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "deus"
let g:lightline = { 'colorscheme': 'xcodedark' }

" Deoplete
" let g:deoplete#enable_at_startup = 1

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>g :Goyo<CR>

colorscheme doom-one

nnoremap <space>l :lnext<CR>
nnoremap <space>p :lprevious<CR>
nnoremap <space>r :lrewind<CR>

" Because ESC is miles away
:imap jk <Esc>

" Python autopep8 on save
"function do_autopep8()
"    execute ':w'
"    execute ':silent !autopep8 -i "%" <enter>'
"endfunction

if has("autocmd")
    nnoremap <space>f :w <enter> :silent !autopep8 -i "%" <enter> :e <enter> 
endif

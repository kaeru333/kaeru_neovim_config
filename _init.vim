set encoding=utf-8
set fileencoding=utf-8

set number
set showmode
set cursorline
set incsearch
set splitright
set clipboard=unnamedplus
set termguicolors

inoremap <silent> jj <ESC>
noremap ss ^
noremap ;; $

autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufRead,BufNewFile *.tex setfiletype tex

nnoremap <C-t> :NERDTreeToggle<CR>
imap <C-a> <C-Y>,
let g:python3_host_prog = system('echo -n $(which python3)')
let g:vimtex_view_general_viewer = 'evince'
let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<C-n>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'  " use Shift-Tab to move backward through tabstops

call plug#begin('~/.vim/plugged')
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdtree' " ディレクトリを開く
Plug 'mattn/emmet-vim' " html,css 補完
Plug 'davidhalter/jedi-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' } " いる
call plug#end()

"dein Scripts-----------------------------
if &compatible
	set nocompatible "Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
let s:dein_dir = expand('~/.config/nvim/dein/')
call dein#begin(s:dein_dir)

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimproc') "vimshellを使うのに必要
call dein#add('Shougo/vimshell') "vimでシェルが扱えるようになる
call dein#add('Shougo/unite.vim') 
call dein#add('Shougo/deoplete.nvim') "自動補完
let g:deoplete#enable_at_startup = 1

"インデントを視覚化
colorscheme default
call dein#add('nathanaelkane/vim-indent-guides')
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1

autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd guibg=red ctermbg=211
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven guibg=green ctermbg=225

"閉じカッコを自動挿入
call dein#add('Townk/vim-autoclose')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
colorscheme desert
set number
set smartindent
set noexpandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
nmap <silent> vp :VimShellPop <Enter> <esc>
inoremap <expr><TAB> pumvisible() ? "\<C-n>":"\<TAB>"
inoremap <expr>j pumvisible() ? "\<C-n>":"j"
inoremap <expr><C-f> pumvisible() ? deoplete#mappings#close_popup():"\<esc>"

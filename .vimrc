
if has('vim_starting')
	  if &compatible
		      set nocompatible               " Be iMproved
    endif

	  " Required:
    set runtimepath+=/home/g1421045/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/g1421045/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/neocomplcache'
"独自に追加
NeoBundle 'MetalPhaeton/easybracket-vim'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 let g:acp_enableAtStartup = 0
 " Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
 " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplcache_min_syntax_length = 3
 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : ''
         \ }

         " Plugin key-mappings.
         inoremap <expr><C-g>     neocomplcache#undo_completion()
         inoremap <expr><C-l>     neocomplcache#complete_common_string()

         " Recommended key-mappings.
         " <CR>: close popup and save indent.
         inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
         function! s:my_cr_function()
           return neocomplcache#smart_close_popup() . "\<CR>"
           endfunction
           " <TAB>: completion.
           inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
           " <C-h>, <BS>: close popup and delete backword char.
           inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
           inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
           inoremap <expr><C-y>  neocomplcache#close_popup()
           inoremap <expr><C-e>  neocomplcache#cancel_popup()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set number
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4

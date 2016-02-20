"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set smartindent


"folding
set foldmethod=indent
set foldlevel=15
set foldlevelstart=15


""""""""""""""""""""""""""
"" ctrlp.vim plugin
"""""""""""""""""""""""""
" defaults: https://github.com/ctrlpvim/ctrlp.vim/blob/master/autoload/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist|build)|(\.(swp|ico|git|svn))$'



"""""""""""""""""""""""""""""""""""""
" editor styling
"""""""""""""""""""""""""""""""""""""
set number

" this is pretty ugly with JS / JSON
"set background=dark
"colorscheme solarized
colorscheme ir_black
let g:airline_theme="kalisi"
set gfn=Hack:h15,Source\ Code\ Pro:h13,Bitstream\ Vera\ Sans\ Mono:h12


"""""""""""""""""""""""""""""""""""""
"" Plugins configs
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"

let g:gitgutter_enabled=1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'

nnoremap <silent> <leader>d :GitGutterToggle<cr>

let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
"""" shortcuts to normal copy paste behavior

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"""""" quick save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5



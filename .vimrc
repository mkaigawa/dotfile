"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/mkaigawa/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/mkaigawa/.cache/dein')
  call dein#begin('/Users/mkaigawa/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/mkaigawa/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('tomtom/tcomment_vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('spolu/dwm.vim')
  call dein#add('fatih/vim-go')
  call dein#add('prabirshrestha/vim-lsp')
  " call dein#add('skanehira/docker.vim')
  " call dein#add('skanehira/docker-compose.vim')

  " Track the engine.
  call dein#add('SirVer/ultisnips')
  " Snippets are separated from the engine. Add this if you want them:
  call dein#add('honza/vim-snippets')
  call dein#add('gabrielelana/vim-markdown')

  " colorscheme
  call dein#add('vim-scripts/darktango.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" settings
colorscheme darktango
highlight Normal ctermbg=none
set t_Co=256

scriptencoding utf-8
set encoding=utf-8

set tags=~/.tags
set noswapfile
set nobackup
set ruler
set cmdheight=2
set laststatus=2
set title
set wildmenu
set showcmd
set nowrap

set browsedir=buffer
set smartcase
set nohlsearch
set incsearch
set hidden
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
set visualbell t_vb=
set noerrorbells

" line
set number relativenumber
nnoremap <F3> :<C-u>setlocal relativenumber!<CR>
set showmatch
set virtualedit=onemore
set smartindent

set list
set listchars=tab:▸\ ,trail:-,nbsp:%
hi NonText guibg=NONE guifg=DarkGreen

highlight LineNr ctermfg=darkyellow

nnoremap j gj
nnoremap k gk
noremap <S-h> ^
noremap <S-l> $
nnoremap ; :
nnoremap : ;
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

" lightline
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component_function': {
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \   'fileencoding': 'LightlineFileencoding',
  \   'mode': 'LightlineMode'
  \ }
\ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"---- vim-go ----
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_version_warning = 0
let g:go_fmt_autosave = 0

"---- UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" ヘッダを非表示にする
let g:netrw_banner=0
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=0

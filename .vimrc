let g:hybrid_use_Xresources = 1
colorscheme hybrid
:syntax on

" 行番号を表示
:set nu

" 自動インデントモードを禁止
set noautoindent

" 1つのTabを4文字の幅で表示
:set tabstop=4

" インデント幅を4に設定
:set shiftwidth=4

" Tabキー押下時に必ずスペースを挿入
" (挿入されるスペースの量はsofttabstopの値で決まる)
:set expandtab

" Tabキー押下時のカーソル移動幅を4文字分に設定
set softtabstop=4

" Tabと改行が表示される
:set list 
:set listchars=tab:>-

" 行頭のTAB文字を可視化
highlight TabString ctermbg=red guibg=red
au BufWinEnter * let w:m2 = matchadd("TabString", '^\t+')
au WinEnter * let w:m2 = matchadd("TabString", '^\t+')

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')

" 以下、Neobundle の使用に必要な設定
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

" ここにインストールしたいプラグインのリストを書く
NeoBundle 'mattn/emmet-vim'

filetype plugin on
filetype indent on

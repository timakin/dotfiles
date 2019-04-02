""""""""""""""""
""デフォルトエンコード
scriptencoding utf-8
""""""""""""""""

""""""""""""""""
""行番号の表示
set number
""""""""""""""""

""""""""""""""""
""インクリメンタルサーチ（文字入力されるたび絞り込んで検索）有効化
set incsearch
""""""""""""""""

""""""""""""""""
"":viした時にファイル名補完
set wildmenu
""""""""""""""""

""""""""""""""""
""削除可能にする
set backspace=indent,eol,start
""""""""""""""""

""""""""""""""""
""カーソル表示の変更
let &t_SI.="\e[5 q"
let &t_EI.="\e[5 q"
""""""""""""""""

""""""""""""""""
"" マウス有効化
set mouse=a
set ttymouse=xterm2
""""""""""""""""

""""""""""""""""
""インデント幅の調整
set tabstop=4
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
""""""""""""""""

""""""""""""""""
""改行時にインデント自動調整
set autoindent
""""""""""""""""

""""""""""""""""
""行をまたいで移動
set nocompatible
set whichwrap=b,s,<,>,[,]
""""""""""""""""

""""""""""""""""
""見た目を調整
let g:solarized_termcolors = 256
let g:rehash256 = 1
set background=dark
"" colorscheme base16-duotone-darkspace
""""""""""""""""

""""""""""""""""
""Vim起動時に実行
if has('vim_starting')

  """"""""""""""""
  ""ファイルタイプに変更があった時、インデントやそれ用のプラグインの読み込みを行わない
  filetype plugin off
  filetype indent off
  """"""""""""""""

  """"""""""""""""
  ""NeoBundlePluginを起動時に読み込み
  execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
  """"""""""""""""
endif
""""""""""""""""

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" ctrlP終了時にキャッシュクリアしない
let g:ctrlp_clear_cache_on_exit = 0

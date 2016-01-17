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


call neobundle#begin(expand('~/.vim/bundle'))
"" :BenchVimrcで行単位に計測時間が表示される
NeoBundle 'mattn/benchvimrc-vim'

"" Ctrl+pで絞込み検索。
NeoBundle 'git://github.com/kien/ctrlp.vim.git'

"" 上記を並列処理で高速化
NeoBundle 'nixprime/cpsm'

"" ctrl+Pマッチャーを事前に走らせとく
"" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:ctrlp_user_command = 'files -a %s'


"" NeoBundleそのもの
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'

"" NERDTree
NeoBundle 'git://github.com/scrooloose/nerdtree.git'

"" emmetをvimで使えるようにする。<C-e>+,に改良。ダッシュが必要
NeoBundle 'mattn/emmet-vim'

"" 下側に色づけされたディレクトリとかブランチ名が出る
NeoBundle 'itchyny/lightline.vim'

"" 選択中にShift+Sを押した後、'や"などで選択範囲を囲める 
NeoBundle 'tpope/vim-surround'

"" カラースキーム
NeoBundle 'altercation/vim-colors-solarized'

"" ,,のコンマダブルでコメントアウト
NeoBundle 'scrooloose/nerdcommenter'

"" ファイル検索の効率化
NeoBundle 'vim-scripts/FuzzyFinder'
NeoBundle 'vim-scripts/L9'

"" :Grepでファイル内検索
NeoBundle 'vim-scripts/grep.vim'

"" :e sudo:./zshrcとかで、任意のファイルをsudoで扱える
NeoBundle 'vim-scripts/sudo.vim'

"" vimでANSIカラーに対応
NeoBundle 'vim-scripts/AnsiEsc.vim'

"" タイプ回数によって同じ文字でも入力をかえる
NeoBundle 'kana/vim-smartchr'

"" テキストオブジェクト（スニペット的なやつを呼び出すコマンド）を作れる
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'

"" Goのシンタックス有効
NeoBundleLazy 'fatih/vim-go', {
    \ 'autoload' : { 'filetypes' : 'go'  }
    \ }

"" Markdown対応とプレビュー可能にする
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

"" Visual Modeで*を押すと、文字の検索ができる
NeoBundle 'thinca/vim-visualstar'

"" 特定の文字をキー一つで入れ替えられる
NeoBundle 'taku-o/vim-toggle'

"" ctangsで付与されたtagの一覧を表示できる
NeoBundle 'majutsushi/tagbar'

"" シンタックスチェック 
NeoBundle 'scrooloose/syntastic'

"" :Agでファイルを横断検索、選択して開けたりもする
NeoBundle 'rking/ag.vim'

"" file_mru使うためのやつ
NeoBundle 'Shougo/neomru.vim'

"" ctags有効化。C+]でジャンプ。
NeoBundle 'szw/vim-tags'

"" rubyのシンタックスハイライト等々
NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'dag/vim2hs'
NeoBundle 'pbrisbin/html-template-syntax'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'moro/vim-review'
NeoBundle 'bling/vim-airline'
NeoBundle 'basyura/bitly.vim'
NeoBundle 'mattn/favstar-vim'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'ujihisa/unite-gem'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'eagletmt/unite-haddock'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'rhysd/unite-ruby-require.vim'
NeoBundleLazy 'Shougo/unite.vim', {
      \       'autoload' : {
      \       'commands' : [ "Unite", "UniteWithBufferDir", "UniteWithCurrentDir" ]
      \   }
      \}
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'Shougo/vimproc.vim'

NeoBundle 'Rip-Rip/clang_complete'

call neobundle#end()



"""""""""""""""""
"" NERDCommenter
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
"""""""""""""""""

"""""""""""""""""
"" tagbar
nmap tB :TagbarToggle<CR>
"" autocmd VimEnter * :TagbarToggle  
"""""""""""""""""

"""""""""""""""""
"" NERDTree（左側のディレクトリツリー表示）
autocmd VimEnter * NERDTree  
"""""""""""""""""

"""""""""""""""""
"" シンタックスハイライト
syntax enable
syntax on
"""""""""""""""""

"""""""""""""""""
"" クリップボードにコピーしたテキストを保存
set clipboard=unnamed,autoselect
"""""""""""""""""

""""""""""""""""
""Ctrl+], Ctrl+^でtag移動できるCtags関連の設定
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'szw/vim-tags'
NeoBundle 'tpope/vim-fugitive'
let g:tlist_javascript_settings = 'javascript;c:class;m:method;f:function;p:property'
""""""""""""""""

""""""""""""""""
""Ctrl+nで複数選択
NeoBundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_next_key='<C-f>'
""""""""""""""""

""""""""""""""""
"" Ctrl+iでファイル形式に応じてコードを実行する
"" markdownファイルはプレビュー画面をオープンする
au FileType vim map <C-i>  :source %<CR>
au FileType perl map <C-i>  :!perl %<CR>
au FileType javascript map <C-i>  :!node %<CR>
au FileType ruby map <C-i>  :!ruby %<CR>
au FileType sh map <C-i>  :!sh %<CR>
au FileType markdown map <C-i> :PrevimOpen <CR>
""""""""""""""""

""""""""""""""""
"" かっこと改行を自動挿入
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o> */
""""""""""""""""

""""""""""""""""
"" emmetのコマンドの設定を変更
let g:user_emmet_leader_key='<C-e>'
""""""""""""""""

""""""""""""""""
"" 画面移動
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

"" set paste
nnoremap paste <C-u>:set paste<CR>

"" 画面分割、幅調整など
nnoremap st :<C-u>tabnew<CR>:NERDTree<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap ag :Ag 
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
""""""""""""""""

""""""""""""""""
"" unite関連
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec/async', 'ignore_pattern', '\(png\|gif\|jpeg\|jpg\)$')
let g:unite_source_rec_max_cache_files = 5000
nnoremap ub :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap uB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap uf :<C-u>Unite file<CR>
nnoremap uF :<C-u>Unite file_mru<CR>

"" <tab>deep<enter>で、特定のディレクトリから先がfile_recになる
let s:unite_action_rec = {}

function! s:unite_action_rec.func(candidate)
  call unite#start([['file_rec', a:candidate.action__path]])
  endfunction

  call unite#custom_action('directory', 'deep', s:unite_action_rec)
  unlet! s:unite_action_rec
""""""""""""""""

""""""""""""""""
"" NERDTREE
nnoremap nt :<C-u>NERDTree<CR>
""""""""""""""""

""""""""""""""""
"" NeoBundle省略
nnoremap nbi :NeoBundleInstall
""""""""""""""""


""""""""""""""""
"" カーソル移動を早める
noremap z<Left> ^
noremap z<Right> $
noremap z<Up> gg
noremap z<Down> G
""""""""""""""""

""""""""""""""""
"" ウィンドウ移動を早める
nnoremap s<Right> <C-w>l
nnoremap s<Left> <C-w>h
nnoremap s<Up> <C-w>k
nnoremap s<Down> <C-w>j
""""""""""""""""

""""""""""""""""
"" .mdの拡張子のファイルをmarkdownファイルとして扱う
au BufRead,BufNewFile *.md set filetype=markdown
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

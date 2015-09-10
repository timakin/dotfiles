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

""""""""""""""""

" syntastic導入用
" まずこれを実行
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" cd ~/.vim/bundle && \
" git clone https://github.com/scrooloose/syntastic.git
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""

call neobundle#begin(expand('~/.vim/bundle'))
"" :BenchVimrcで行単位に計測時間が表示される
NeoBundle 'mattn/benchvimrc-vim'

"" Ctrl+pで絞込み検索。
NeoBundle 'git://github.com/kien/ctrlp.vim.git'

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


NeoBundle 'thinca/vim-poslist'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'dag/vim2hs'
NeoBundle 'pbrisbin/html-template-syntax'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'godlygeek/tabular'
"" シンタックスチェック 
NeoBundle 'scrooloose/syntastic'

"" :Agでファイルを横断検索、選択して開けたりもする
NeoBundle 'rking/ag.vim'
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
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'szw/vim-tags'
call neobundle#end()

"""""""""""""""""
"" NERDCommenter
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
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
set clipboard=unnamed
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
""""""""""""""""

""""""""""""""""
""Ctrl+iでファイル形式に応じてコードを実行する
au FileType vim map <C-i>  :source %<CR>
au FileType perl map <C-i>  :!perl %<CR>
au FileType javascript map <C-i>  :!node %<CR>
au FileType ruby map <C-i>  :!ruby %<CR>
au FileType sh map <C-i>  :!sh %<CR>
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


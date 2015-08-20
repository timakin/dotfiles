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
""マウス有効化""
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
set background=dark
let g:solarized_termcolors = 256
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
NeoBundle 'mattn/benchvimrc-vim'
NeoBundle 'git://github.com/kien/ctrlp.vim.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'baskerville/bubblegum'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'kana/vim-smartchr'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'motemen/hatena-vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'carlosvillu/coffeScript-VIM-Snippets'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kana/vim-submode'
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
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'godlygeek/tabular'
NeoBundle 'scrooloose/syntastic'
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
autocmd VimEnter * NERDTree  
syntax enable
syntax on
let g:acp_enableatstartup = 1
let g:rehash256 = 1
filetype plugin on
filetype indent on
set mouse=a
set clipboard=unnamed
let g:acp_enableatstartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc=1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif


NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'szw/vim-tags'
NeoBundle 'tpope/vim-fugitive'
let g:tlist_javascript_settings = 'javascript;c:class;m:method;f:function;p:property'

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


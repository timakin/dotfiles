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
set background=dark
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

call neobundle#begin(expand('~/.vim/bundle'))
"" 自動補完。設定は後述。
NeoBundle 'Shougo/neocomplcache.vim'

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
NeoBundle 'baskerville/bubblegum'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'

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
"" lightlineのカラースキームを変更
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
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

"" 以下はNeoCompleteの設定。READMEのexampleそのまま。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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


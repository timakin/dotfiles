call neobundle#begin(expand('~/.vim/bundle'))
"" :BenchVimrcで行単位に計測時間が表示される
NeoBundle 'mattn/benchvimrc-vim'

"" Ctrl+pで絞込み検索。
NeoBundle 'kien/ctrlp.vim'

"" 上記を並列処理で高速化
NeoBundle 'nixprime/cpsm'

"" ctrl+Pマッチャーを事前に走らせとく
"" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:ctrlp_user_command = 'files -a %s'


"" NeoBundleそのもの
NeoBundle 'Shougo/neobundle.vim'

"" NERDTree
NeoBundle 'scrooloose/nerdtree'

"" emmetをvimで使えるようにする。<C-e>+,に改良。ダッシュが必要
NeoBundle 'mattn/emmet-vim'

"" 下側に色づけされたディレクトリとかブランチ名が出る
NeoBundle 'itchyny/lightline.vim'

"" 選択中にShift+Sを押した後、'や"などで選択範囲を囲める 
NeoBundle 'tpope/vim-surround'

"" カラースキーム
NeoBundle 'altercation/vim-colors-solarized'

"" ,,のコンマダブルでコメント
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
NeoBundle 'vim-jp/vim-go-extra'

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

"" 入力自動補完
NeoBundle 'Shougo/neocomplete.vim'

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

NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'szw/vim-tags'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'terryma/vim-multiple-cursors'
call neobundle#end()

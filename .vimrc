scriptencoding utf-8
set nocompatible
set number
set autoindent
set incsearch
set wildmenu
set mouse=a
set ttymouse=xterm2
set background=dark
set tabstop=2
set shiftwidth=2
set whichwrap=b,s,<,>,[,]
set background=dark
" solarized options 
let g:solarized_termcolors = 256
colorscheme molokai

if has('vim_starting')
	  filetype plugin off
	    filetype indent off
	      execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
      endif
      call neobundle#rc(expand('~/.vim/bundle'))

      NeoBundle 'rails.vim'
     " NeoBundle 'Shougo/neocomplcache'
      NeoBundle 'git://github.com/kien/ctrlp.vim.git'
      NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
      NeoBundle 'git://github.com/scrooloose/nerdtree.git'
      NeoBundle 'mattn/emmet-vim'
			" NeoBundle 'git://github.com/scrooloose/syntastic.git'
      NeoBundle 'itchyny/lightline.vim'
			NeoBundle 'tpope/vim-surround'
			NeoBundle 'tpope/vim-rails'
			NeoBundle 'altercation/vim-colors-solarized'
			NeoBundle 'baskerville/bubblegum'
			NeoBundle 'nanotech/jellybeans.vim'
			NeoBundle 'w0ng/vim-hybrid'
			NeoBundle 'vim-scripts/twilight'
			NeoBundle 'jonathanfilip/vim-lucius'
			NeoBundle 'jpo/vim-railscasts-theme'

			NeoBundle 'tpope/vim-rails'
			NeoBundle 'vim-ruby/vim-ruby'
			NeoBundle 'tpope/vim-cucumber'
			NeoBundle 'thinca/vim-quickrun'
			NeoBundle 'scrooloose/nerdcommenter'

			NeoBundle 'thinca/vim-ref'
			NeoBundle 'taka84u9/vim-ref-ri'
			NeoBundle 'ujihisa/ref-hoogle'

			NeoBundle 'vim-scripts/surround.vim'
			NeoBundle 'vim-scripts/L9'
			NeoBundle 'vim-scripts/YankRing.vim'
			NeoBundle 'vim-scripts/grep.vim'
			NeoBundle 'vim-scripts/sudo.vim'
			" NeoBundle 'vim-scripts/errormarker.vim'
			NeoBundle 'vim-scripts/AnsiEsc.vim'

			NeoBundle 'kana/vim-smartchr'
			NeoBundle 'kana/vim-textobj-user'
			NeoBundle 'nelstrom/vim-textobj-rubyblock'
			NeoBundle 'motemen/hatena-vim'
			NeoBundle 'kchmck/vim-coffee-script'
			NeoBundle 'carlosvillu/coffeScript-VIM-Snippets'

			NeoBundle 'mattn/emmet-vim'
			NeoBundle 'claco/jasmine.vim'
			NeoBundle 'digitaltoad/vim-jade'
			NeoBundle 'tpope/vim-haml'
			NeoBundle 'nono/vim-handlebars'
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
		"	NeoBundle 'scrooloose/syntastic'
			NeoBundle 'rking/ag.vim'
			NeoBundle 'moro/vim-review'
			NeoBundle 'bling/vim-airline'
			NeoBundle 'basyura/bitly.vim'
			NeoBundle 'mattn/favstar-vim'
			NeoBundleLazy 'basyura/twibill.vim'
			NeoBundleLazy 'basyura/TweetVim', 'dev', {
						\   'depends' : ['basyura/twibill.vim', 'tyru/open-browser.vim' ],
						\   'autoload' : {
						\       'commands' : [ "TweetVimHomeTimeline", "TweetVimSay", "TweetVimUserStream", "TweetVimUserTimeline" ]
						\   }
						\}

			NeoBundle 'tpope/vim-fugitive'

			NeoBundle 'tsukkee/unite-help'
			NeoBundle 'ujihisa/unite-gem'
			NeoBundle 'thinca/vim-unite-history'
			NeoBundle 'h1mesuke/unite-outline'
			NeoBundle 'eagletmt/unite-haddock'
			NeoBundle 'tsukkee/unite-tag'
			NeoBundle 'rhysd/unite-ruby-require.vim'

			NeoBundleLazy 'Shougo/unite.vim', {
						\   'autoload' : {
						\       'commands' : [ "Unite", "UniteWithBufferDir", "UniteWithCurrentDir" ]
						\   }
						\}

			NeoBundle 'Shougo/neosnippet'
			NeoBundle 'Shougo/neosnippet-snippets'
			NeoBundle 'Rip-Rip/clang_complete'

			if has('lua')
				  NeoBundleLazy 'Shougo/neocomplete', {
					  \   'depends' : ['Shougo/neosnippet', 'Shougo/context_filetype.vim'],
					  \   'vim_version' : '7.3.885',
					  \   'autoload' : {
					  \       'insert' : 1,
					  \   }
					  \}
				else
					  NeoBundleLazy 'Shougo/neocomplcache', {
						  \   'depends' : ["Shougo/neosnippet"],
						  \   'autoload' : {
						  \       'insert' : 1,
						  \   }
						  \}
					endif

					NeoBundleLazy 'Shougo/vimfiler', {
								\   'depends' : ["Shougo/unite.vim"],
								\   'autoload' : {
								\       'commands' : [ "VimFilerTab", "VimFiler", "VimFilerExplorer", "VimFilerBufferDir" ],
								\       'mappings' : ['<Plug>(vimfiler_switch)'],
								\       'explorer' : 1,
								\   }
								\}

					NeoBundleLazy 'Shougo/vimshell', {
					      \ 'depends' : 'Shougo/vimproc',
					      \ 'autoload' : {
					      \   'commands' : [{ 'name' : 'VimShell',
					      \                   'complete' : 'customlist,vimshell#complete'},
					      \                 'VimShellExecute', 'VimShellInteractive',
					      \                 'VimShellTerminal', 'VimShellPop'],
					      \   'mappings' : ['<Plug>(vimshell_switch)']
					      \ }}

					NeoBundleLazy 'mattn/gist-vim', {
								\   'autoload' : {
								\       'commands' : [ "Gist" ]
								\   }
								\}

					NeoBundleLazy 'sjl/gundo.vim', {
								\   'autoload' : {
								\       'commands' : [ "GundoShow", "GundoToggle" ]
								\   }
								\}

					NeoBundleLazy 'kana/vim-altr', {
								\   'autoload' : {
								\       'mappings' : ['<Plug>(altr-forward)', '<Plug>(altr-back)'],
								\   }
								\}

					NeoBundle 'joker1007/vim-ruby-heredoc-syntax'
					NeoBundle 'joker1007/vim-markdown-quote-syntax'
					" }}}

      autocmd VimEnter * NERDTree  
      syntax enable
      syntax on
			let g:acp_enableatstartup = 1
			let g:rehash256 = 1
      filetype plugin on
      filetype indent on

      " ssh クライアントの設定によってはマウスが使える（putty
      " だと最初からいける）
      set mouse=a
			set clipboard=unnamed

		" disable autocomplpop.
    let g:acp_enableatstartup = 0
    " use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
		let g:neocomplcache_force_overwrite_completefunc=1
		" use smartcase.
		"let g:neocomplcache_enable_smart_case = 1
    " use camel case completion.
    let g:neocomplcache_enable_camel_case_completion = 1
    " use underbar completion.
    let g:neocomplcache_enable_underbar_completion = 1
    " set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    
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
      	


"""""""""""""""""
"" NERDCommenter
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
"""""""""""""""""

"""""""""""""""""
"" tagbar
nmap tB :TagbarToggle<CR>
"" autocmd VimEnter * :Tagbar
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
let g:tlist_javascript_settings = 'javascript;c:class;m:method;f:function;p:property'
let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"
""""""""""""""""

""""""""""""""""
""Ctrl+fで複数選択
let g:multi_cursor_use_default_mapping=0
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

""
""""""""""""""""

""""""""""""""""
"" unite関連
"" call unite#filters#matcher_default#use(['matcher_fuzzy'])
"" //call unite#custom#source('file_rec/async', 'ignore_pattern', '\(png\|gif\|jpeg\|jpg\)$')
let g:unite_source_rec_max_cache_files = 5000
nnoremap ub :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap uB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap uf :<C-u>Unite file<CR>
nnoremap uF :<C-u>Unite file_mru<CR>
nnoremap uo :<C-u>Unite outline<CR>

"" <tab>deep<enter>で、特定のディレクトリから先がfile_recになる
let s:unite_action_rec = {}

function! s:unite_action_rec.func(candidate)
  call unite#start([['file_rec', a:candidate.action__path]])
  endfunction

""  call unite#custom_action('directory', 'deep', s:unite_action_rec)
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




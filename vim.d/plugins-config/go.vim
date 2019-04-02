" syntastic for Go
" let g:syntastic_mode_map = { 'mode': 'passive',
"    \ 'active_filetypes': ['go'] }
" let g:syntastic_go_checkers = ['go', 'golint']


" for golang {{{
set path+=$GOPATH/src/**
let g:gofmt_command = 'goimports'
au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4 completeopt=menu,preview
au FileType go compiler go
" }}}

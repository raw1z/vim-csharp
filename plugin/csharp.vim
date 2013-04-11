" csharp.vim - dev tools for c#
" Maintainer: Rawane Zossou <dev@raw1z.fr>

if exists('g:loaded_csharp') || &cp || v:version < 700
  finish
endif
let g:loaded_csharp = 1

" Compilation commands and keymaps {{{1
command! CsharpBuild          call CsharpBuild()
command! CsharpRebuild        call CsharpRebuild()
command! CsharpReleaseBuild   call CsharpReleaseBuild()
command! CsharpReleaseRebuild call CsharpReleaseRebuild()

nmap <leader>b  :CsharpBuild<CR>
nmap <leader>br :CsharpRebuild<CR>
nmap <leader>B  :CsharpReleaseRebuild<CR>

" Debugging commands {{{1
command! CsharpDebugHere call CsharpDebugHere()
command! CsharpDebugBreakHere call CsharpDebugBreakHere()

nmap <leader>d :CsharpDebugHere<CR>
nmap <leader>D :CsharpDebugBreakHere<CR>

" Online documentation commands and keymaps {{{1
command! CsharpOnlineDoc call CsharpOnlineDoc()

map <silent> <F1> :CsharpOnlineDoc<CR>
imap <silent> <F1> <ESC>:CsharpOnlineDoc<CR>


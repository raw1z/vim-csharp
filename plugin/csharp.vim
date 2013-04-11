" csharp.vim - dev tools for c#
" Maintainer: Rawane Zossou <dev@raw1z.fr>

" this plugin only works for windows enviromnents
if !has("win32")
  finish
endif

" ensure that the plugin is loaded one time
if exists('g:loaded_csharp') || &cp || v:version < 700
  finish
endif
let g:loaded_csharp = 1

" Compilation commands and keymaps {{{1
command! CsharpBuild          call csharp#build#CsharpBuild()
command! CsharpRebuild        call csharp#build#CsharpRebuild()
command! CsharpReleaseBuild   call csharp#build#CsharpReleaseBuild()
command! CsharpReleaseRebuild call csharp#build#CsharpReleaseRebuild()

nmap <leader>b  :CsharpBuild<CR>
nmap <leader>br :CsharpRebuild<CR>
nmap <leader>B  :CsharpReleaseRebuild<CR>

" Debugging commands {{{1
command! CsharpDebugHere call csharp#debug#CsharpDebugHere()
command! CsharpDebugBreakHere call csharp#debug#CsharpDebugBreakHere()

nmap <leader>d :CsharpDebugHere<CR>
nmap <leader>D :CsharpDebugBreakHere<CR>

" Online documentation commands and keymaps {{{1
command! CsharpOnlineDoc call csharp#doc#CsharpOnlineDoc()

map <silent> <F1> :CsharpOnlineDoc<CR>
imap <silent> <F1> <ESC>:CsharpOnlineDoc<CR>


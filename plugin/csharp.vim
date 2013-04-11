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

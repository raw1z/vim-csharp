command! CsharpBuild          call CsharpBuild()
command! CsharpRebuild        call CsharpRebuild()
command! CsharpReleaseBuild   call CsharpReleaseBuild()
command! CsharpReleaseRebuild call CsharpReleaseRebuild()

nmap <leader>b  :CsharpBuild<CR>
nmap <leader>br :CsharpRebuild<CR>
nmap <leader>B  :CsharpReleaseRebuild<CR>

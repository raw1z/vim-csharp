let g:csharp_msbuild = 'C:\windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe'
let g:csharp_common_build_params = ' /nologo /v:q /property:GenerateFullPaths=true '

" build a solution file
function! csharp#build(solutionFile, options)
  execute(":wa")
  let compilationOptions = g:csharp_common_build_params

  if has_key(a:options, 'configuration')
    let compilationOptions = compilationOptions."/p:Configuration=".a:options.configuration." "
  endif

  if has_key(a:options, 'targets')
    let compilationOptions = compilationOptions."/t:".a:options.targets." "
  endif

  let &mp = g:csharp_msbuild.compilationOptions.a:solutionFile
  set errorformat=\ %#%f(%l\\\,%c):\ %m
  silent execute "Dispatch"
endfunction

" returns the solution file inside
" the current working folder
" TODO: manage the case where there are several solutions in the folder
function! csharp#getCurrentSolution()
  return globpath(getcwd(), '*.sln')
endfunction

" build the current solution with
" the default configuration as it is
" defined in the solution file
function! CsharpBuild()
  let solution = csharp#getCurrentSolution()
  call csharp#build(solution, {})
endfunction

" rebuild the current solution with
" the default configuration as it is
" defined in the solution file
function! CsharpRebuild()
  let solution = csharp#getCurrentSolution()
  let options = { 'targets' : 'Rebuild' }
  call csharp#build(solution, options)
endfunction

" build the current solution in release
function! CsharpReleaseBuild()
  let solution = csharp#getCurrentSolution()
  let options = { 'configuration' : 'Release' }
  call csharp#build(solution, options)
endfunction

" rebuild the current solution in release
function! CsharpReleaseRebuild()
  let solution = csharp#getCurrentSolution()
  let options = { 'targets' : 'Rebuild', 'configuration' : 'Release' }
  call csharp#build(solution, options)
endfunction


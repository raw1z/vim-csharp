" lauch a debugger programmaticaly
function! CsharpDebugHere()
  execute ":norm OSystem.Diagnostics.Debugger.Launch();"
endfunction

" set a break point programmaticaly
function! CsharpDebugBreakHere()
  execute ":norm OSystem.Diagnostics.Debugger.Break();"
endfunction


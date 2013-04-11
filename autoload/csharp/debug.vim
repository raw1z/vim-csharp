" lauch a debugger programmaticaly
function! csharp#debug#CsharpDebugHere()
  execute ":norm OSystem.Diagnostics.Debugger.Launch();"
endfunction

" set a break point programmaticaly
function! csharp#debug#CsharpDebugBreakHere()
  execute ":norm OSystem.Diagnostics.Debugger.Break();"
endfunction


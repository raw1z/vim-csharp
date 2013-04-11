" setup integrated help
function! CsharpOnlineDoc()
  let s:wordUnderCursor = expand("<cword>")

  if &ft =~ "cs"
    let s:url = "http://social.msdn.microsoft.com/Search?query=" . s:wordUnderCursor
    let s:cmd = "Dispatch start " . s:url
    silent execute s:cmd
  endif
endfunction


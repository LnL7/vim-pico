if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal nosmartindent

setlocal indentexpr=GetPicoIndent(v:lnum)

if exists("*GetPicoIndent")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let s:skip_types  = '\%(Comment\|String\)$'
let s:skip_syntax = "synIDattr(synID(line('.'),col('.'),1),'name') =~? '" . s:skip_types . "'"

function! GetPicoIndent(...)
  let lnum = prevnonblank(v:lnum - 1)
  let ind  = indent(lnum)

  " At the start of the file use zero indent.
  if lnum == 0
    return 0
  endif

  if synIDattr(synID(v:lnum, 1, 1), "name") !~ s:skip_types
    let splited_line = split(getline(lnum), '\zs')
    let opened_symbol = 0
    let opened_symbol += count(splited_line, '(') - count(splited_line, ')')
    let opened_symbol += count(splited_line, '[') - count(splited_line, ']')
    let opened_symbol += count(splited_line, '{') - count(splited_line, '}')

    let ind += opened_symbol * &sw

    if getline(v:lnum -1) =~ ':$'
      let ind += &sw
    endif

    if getline(lnum) =~ ';'
      let bslnum = searchpair('{', '', '}', 'bnW')
      let ind = indent(bslnum) + &sw
    endif
  endif

  return ind
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save

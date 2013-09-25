if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword picoKeyword  begin if while until for case load error call commit
syn keyword picoKeyword  continue escape capture not or and
syn keyword picoBoolean  true false else

syn keyword picoFunction trunc abs char ord number text random clock sqrt sin
syn keyword picoFunction cos tan arcsin arccos arctan exp log length explode
syn keyword picoFunction implode is_void is_number is_fraction is_text
syn keyword picoFunction is_table is_function is_dictionary is_continuation size
syn keyword picoFunction table display accept dump read eval print tag rank make
syn keyword picoFunction get set

syn keyword picoName     eoln void empty null quote
syn match   picoName     '\<[A-Z]\i*\>'

syn match   picoNumber   '\<[0-9]\+\>'

syn match   picoOperator '+\|-\|*\|/\|//\|\\\\\|\^\|<\|<=\|=\|!\|!=\|>\|>=\|\~'
syn match   picoOperator '!\~\|#\|##\|&'
syn match   picoSymbol   ':\|@'

syn region  picoComment  contains=picoTodo,@Spell start=+`+ end=+`+
syn keyword picoTodo     FIXME NOTE TODO OPTIMIZE XXX HACK contained

syn region  picoString   matchgroup=picoDelimiter start=+"+ end=+"+ skip=+\\\\\|\\"+
syn region  picoString   matchgroup=picoDelimiter start=+'+ end=+'+ skip=+\\\\\|\\'+

syn region  picoBlock    matchgroup=picoDelimiter start='{'  end='}'  transparent fold
syn region  picoParen    start='('  end=')'  contained transparent

hi def link picoBoolean   Boolean
hi def link picoComment   Comment
hi def link picoDelimiter Delimiter
hi def link picoFunction  Function
hi def link picoKeyword   Keyword
hi def link picoName      Type
hi def link picoNumber    Number
hi def link picoOperator  Operator
hi def link picoString    String
hi def link picoSymbol    Delimiter
hi def link picoTodo      Todo
hi def link picoVariable  Type
hi def link picoTable     Type

let b:current_syntax = "pico"

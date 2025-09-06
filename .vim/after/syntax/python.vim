" syntax=python

" https://docs.python.org/3/library/constants.html
syntax keyword pythonBoolean    False True
syntax keyword pythonConstant   None NotImplemented Ellipsis __debug__
highlight link pythonBoolean    Boolean
highlight link pythonConstant   Constant

" https://docs.python.org/3/library/stdtypes.html
syntax keyword pythonType   int float complex
syntax keyword pythonType   bool
syntax keyword pythonType   list tuple range
syntax keyword pythonType   str
syntax keyword pythonType   bytes bytearray memoryview
syntax keyword pythonType   set frozenset
syntax keyword pythonType   dict
highlight link pythonType   Type

" https://docs.python.org/3/reference/lexical_analysis.html#f-strings
syntax region pythonFString
    \ matchgroup=pythonQuotes
    \ start=/\cF\z(['"]\)/
    \ end=/\z1/
    \ skip=/\\\\\|\\\z1/
    \ contains=pythonFStringField,pythonEscape,@Spell
syntax region pythonFString
    \ matchgroup=pythonTripleQuotes
    \ start=/\cF\z('''\|"""\)/
    \ end=/\z1/
    \ contains=pythonFStringField,pythonEscape,pythonSpaceError,pythonDoctest,@Spell
    \ keepend
syntax region pythonRawFString
    \ matchgroup=pythonQuotes
    \ start=/\c\%(FR\|RF\)\z(['"]\)/
    \ end=/\z1/
    \ skip=/\\\\\|\\\z1/
    \ contains=pythonFStringField,@Spell
syntax region pythonRawFString
    \ matchgroup=pythonTripleQuotes
    \ start=/\c\%(FR\|RF\)\z('''\|"""\)/
    \ end=/\z1/
    \ contains=pythonFStringField,pythonSpaceError,pythonDoctest,@Spell
    \ keepend
highlight link pythonFString String
highlight link pythonRawFString String

" `skip` is complicated because:
"
" - Format specifications may include nested replacement fields
"
"       { \_[^}]\+ }
"
" - Python 3.12 allows comments in f-string fields, but '#' is also a format
"   specification - https://docs.python.org/3/library/string.html#formatspec
"
"       \%( : \%( .\= [<>=^] \)\= [-+ ]\= \)\@4<! # .* $
"
syntax region pythonFStringField
    \ matchgroup=pythonFStringDelim
    \ start=/{\@1<!{{\@!/
    \ end=/}/
    \ skip=/{\_[^}]\+}\|\%(:\%(.\=[<>=^]\)\=[-+ ]\=\)\@4<!#.*$/
    \ contained
highlight link pythonFStringField Identifier
highlight link pythonFStringDelim Special

" syntax=python

" https://docs.python.org/3/library/constants.html
syntax keyword pythonBoolean    False True
syntax keyword pythonConstant   None NotImplemented Ellipsis __debug__
highlight link pythonBoolean    Boolean
highlight link pythonConstant   Constant

" https://docs.python.org/3/library/stdtypes.html
syntax keyword pythonType       int float complex
syntax keyword pythonType       bool
syntax keyword pythonType       list tuple range
syntax keyword pythonType       str
syntax keyword pythonType       bytes bytearray memoryview
syntax keyword pythonType       set frozenset
syntax keyword pythonType       dict
highlight link pythonType       Type

"if version < 600
" syntax clear
"elseif exists("b:current_syntax")
" finish
"endif

syntax match tweeDelimiter "[<<|>>|\]\]|\[\[]"
syntax keyword tweeMacro if else endif choice actions set remember print silently endsilently
syntax match tweePassageTitle	"^::.*$"
syntax match tweeVariable "\$\w*"
syntax region tweeLink	matchgroup=tweeDelimiter start="\[\[" end="]]"
syntax match tweeNumber "[0-9]"
syntax region tweeString start="\"" end="\""
syntax region tweeItalics matchgroup=tweeDelimiter start="//" end="//"
syntax region tweeItalics matchgroup=tweeDelimiter start="''" end="''"
syntax region tweeItalics matchgroup=tweeDelimiter start="__" end="__"

hi link tweeNumber Number
hi link tweeString String
hi tweePassageTitle	gui=bold guifg=#aaff80
hi tweeDelimiter guifg=#805060
hi tweeItalics gui=italic
hi tweeBold gui=bold
hi tweeUnderline gui=underline
hi tweeMacro guifg=#ff5060
hi tweeLink gui=underline guifg=#ff77aa
hi tweeVariable guifg=#aaccff

let b:current_syntax = "twee"

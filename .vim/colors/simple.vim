" colorscheme simple

highlight clear
if &background == "dark"
    highlight LineNr        cterm=NONE ctermfg=DarkGray
    highlight MatchParen    cterm=NONE ctermbg=239      " #4e4e4e Grey30
    highlight SpecialKey    cterm=NONE ctermfg=DarkGray

    highlight Comment       cterm=NONE ctermfg=DarkGray
    highlight Constant      cterm=NONE ctermfg=33       " #0087ff DodgerBlue1
    highlight Identifier    cterm=NONE ctermfg=White
    highlight PreProc       cterm=NONE ctermfg=DarkRed
    highlight Special       cterm=NONE ctermfg=213      " #ff87ff Orchid1
    highlight Statement     cterm=NONE ctermfg=DarkRed
    highlight Type          cterm=NONE ctermfg=DarkGreen
else
    highlight LineNr        cterm=NONE ctermfg=DarkGray
    highlight MatchParen    cterm=NONE ctermbg=254      " #e4e4e4 Grey89
    highlight SpecialKey    cterm=NONE ctermfg=DarkGray

    highlight Comment       cterm=NONE ctermfg=DarkGray
    highlight Constant      cterm=NONE ctermfg=DarkBlue
    highlight Identifier    cterm=NONE ctermfg=Black
    highlight PreProc       cterm=NONE ctermfg=DarkRed
    highlight Special       cterm=NONE ctermfg=DarkMagenta
    highlight Statement     cterm=NONE ctermfg=DarkRed
    highlight Type          cterm=NONE ctermfg=DarkGreen
endif
let g:colors_name = expand('<sfile>:t:r')

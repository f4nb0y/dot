" colorscheme dot

highlight clear
if &background == "dark"
    highlight Comment       cterm=NONE ctermfg=245  " #8a8a8a Grey54
    highlight Constant      cterm=NONE ctermfg=33   " #0087ff DodgerBlue1
    highlight Identifier    cterm=NONE ctermfg=123  " #87ffff DarkSlateGray1
    highlight Statement     cterm=NONE ctermfg=210  " #ff8787 LightCoral
    highlight PreProc       cterm=NONE ctermfg=213  " #ff87ff Orchid1
    highlight Type          cterm=NONE ctermfg=120  " #87ff87 LightGreen
    highlight Special       cterm=NONE ctermfg=213  " #ff87ff Orchid1
else
    highlight Comment       cterm=NONE ctermfg=240  " #585858 Grey35
    highlight Constant      cterm=NONE ctermfg=17   " #00005f NavyBlue
    highlight Identifier    cterm=NONE ctermfg=23   " #005f5f DeepSkyBlue4
    highlight Statement     cterm=NONE ctermfg=52   " #5f0000 DarkRed
    highlight PreProc       cterm=NONE ctermfg=53   " #5f005f DeepPink4
    highlight Type          cterm=NONE ctermfg=22   " #005f00 DarkGreen
    highlight Special       cterm=NONE ctermfg=53   " #5f005f DeepPink4
endif
let g:colors_name = expand('<sfile>:t:r')

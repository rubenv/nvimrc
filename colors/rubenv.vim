hi SpecialKey     term=bold ctermfg=4 guifg=Blue
hi NonText        term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory      term=bold ctermfg=4 guifg=Blue
hi ErrorMsg       term=standout cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi IncSearch      term=reverse cterm=reverse gui=reverse
hi Search         term=reverse ctermfg=0 ctermbg=3 guibg=Yellow
hi MoreMsg        term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg        term=bold cterm=bold gui=bold
hi LineNr         term=underline ctermfg=3 guifg=Brown
hi Question       term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine     term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC   term=reverse cterm=reverse gui=reverse
hi VertSplit      term=reverse cterm=reverse gui=reverse
hi Title          term=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual         term=reverse cterm=reverse guibg=LightGrey
hi clear VisualNOS
hi WarningMsg     term=standout ctermfg=1 guifg=Red
hi WildMenu       term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded         term=standout ctermfg=3 ctermbg=0 guifg=Brown guibg=Black
hi FoldColumn     term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Grey
hi DiffAdd        term=bold ctermbg=4 guibg=LightBlue
hi DiffChange     term=bold ctermbg=5 guibg=LightMagenta
hi DiffDelete     term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=Blue guibg=LightCyan
hi DiffText       term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
hi SignColumn     term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Grey
hi clear Conceal
hi SpellBad       term=reverse ctermbg=1 gui=undercurl guisp=Red
hi SpellCap       term=reverse ctermbg=4 gui=undercurl guisp=Blue
hi SpellRare      term=reverse ctermbg=5 gui=undercurl guisp=Magenta
hi SpellLocal     term=underline ctermbg=6 gui=undercurl guisp=DarkCyan
hi Pmenu          ctermbg=5 guibg=LightMagenta
hi PmenuSel       ctermbg=7 guibg=Grey
hi PmenuSbar      ctermbg=7 guibg=Grey
hi PmenuThumb     cterm=reverse gui=reverse
hi TabLine        term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel     term=bold cterm=bold gui=bold
hi TabLineFill    term=reverse cterm=reverse gui=reverse
hi CursorColumn   term=reverse ctermbg=7 guibg=Grey90
hi CursorLine     term=underline cterm=underline guibg=Grey90
hi ColorColumn    term=reverse ctermbg=1 guibg=LightRed
hi MatchParen     term=reverse ctermbg=6 guibg=Cyan
hi Comment        term=bold ctermfg=4 guifg=Blue
hi Constant       term=underline ctermfg=1 guifg=Magenta
hi Special        term=bold ctermfg=5 guifg=SlateBlue
hi Identifier     term=underline ctermfg=6 guifg=DarkCyan
hi Statement      term=bold ctermfg=3 gui=bold guifg=Brown
hi PreProc        term=underline ctermfg=5 guifg=Purple
hi Type           term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined     term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore         cterm=bold ctermfg=7 guifg=bg
hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi Todo           term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Function       Identifier
hi link Conditional    Statement
hi link Repeat         Statement
hi link Label          Statement
hi link Operator       Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special

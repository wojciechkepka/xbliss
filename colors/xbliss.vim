let g:colors_name = 'xbliss'
let g:airline_theme = "xbliss"
let g:xbliss_colors = {
  \ "base0"        : "#2d2a3a",
  \ "base1"        : "#3B374C",
  \ "base2"        : "#48435D",
  \ "base3"        : "#625C7F",
  \ "base4"        : "#7F789D",
  \ "base5"        : "#9F9AB6",
  \ "base6"        : "#BFBBCE",
  \ "base7"        : "#DEE0E7",
  \ "deep_blue0"   : "#2046DF",
  \ "deep_blue1"   : "#4C6BE6",
  \ "deep_yellow"  : "#fef937",
  \ "purple"       : "#AF79EC",
  \ "light_purple" : "#CAA7F3",
  \ "some_purple"  : "#96A1CF",
  \ "blue"         : "#7990EC",
  \ "light_blue"   : "#79ECE8",
  \ "red"          : "#EC7990",
  \ "yellow"       : "#ECD579",
  \ "orange"       : "#ECAF79",
  \ "green"        : "#90EC79",
  \ "teal"         : "#79EC9C",
  \ "light_teal"   : "#9FF2E1",
  \ "pink"         : "#EC79C9",
  \ "purp"         : "#D579EC",
  \ "none"         : "NONE", }

if &background ==# 'light'
    g:xbliss_colors["base0"] = "#CFCCDA"
endif

function _ghighlight(group, guifg, guibg, style)
    if (a:style != "")
        return "hi " . a:group . " guifg=" . g:xbliss_colors[a:guifg] . " guibg=" . g:xbliss_colors[a:guibg] . " guisp=NONE gui=" . a:style . " cterm=" . a:style
    else
        return "hi " . a:group . " guifg=" . g:xbliss_colors[a:guifg] . " guibg=" . g:xbliss_colors[a:guibg] . " guisp=NONE gui=NONE cterm=NONE"
    endif
endfunction

function GHighlight(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "")
endfunction

function GHighlightBold(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "bold")
endfunction

function GHighlightUnderline(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "underline")
endfunction

function GHighlightUndercurl(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "undercurl")
endfunction

hi clear
if exists('syntax_on')
syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

if (has('termguicolors') && &termguicolors) || has('gui_running')

  let g:indentLine_color_gui  = g:xbliss_colors["base4"]
  let g:indentLine_color_term = 59
  let g:limelight_conceal_guifg = g:xbliss_colors["base5"]
  let g:limelight_conceal_ctermfg = 245

  let g:terminal_ansi_colors = [
              \  g:xbliss_colors["base3"],
              \  g:xbliss_colors["red"],
              \  g:xbliss_colors["teal"],
              \  g:xbliss_colors["yellow"],
              \  g:xbliss_colors["blue"],
              \  g:xbliss_colors["pink"],
              \  g:xbliss_colors["purple"],
              \  g:xbliss_colors["base7"],
              \  g:xbliss_colors["base5"],
              \  g:xbliss_colors["red"],
              \  g:xbliss_colors["light_teal"],
              \  g:xbliss_colors["orange"],
              \  g:xbliss_colors["light_blue"],
              \  g:xbliss_colors["pink"],
              \  g:xbliss_colors["light_purple"],
              \  g:xbliss_colors["base7"],
                  \]

  if has('nvim')
    let g:terminal_color_0 = g:xbliss_colors["base3"]
    let g:terminal_color_1 = g:xbliss_colors["red"]
    let g:terminal_color_2 = g:xbliss_colors["teal"]
    let g:terminal_color_3 = g:xbliss_colors["yellow"]
    let g:terminal_color_4 = g:xbliss_colors["blue"]
    let g:terminal_color_5 = g:xbliss_colors["pink"]
    let g:terminal_color_6 = g:xbliss_colors["purple"]
    let g:terminal_color_7 = g:xbliss_colors["base7"]
    let g:terminal_color_8 = g:xbliss_colors["base5"]
    let g:terminal_color_9 = g:xbliss_colors["red"]
    let g:terminal_color_10 = g:xbliss_colors["light_teal"]
    let g:terminal_color_11 = g:xbliss_colors["orange"]
    let g:terminal_color_12 = g:xbliss_colors["light_blue"]
    let g:terminal_color_13 = g:xbliss_colors["pink"]
    let g:terminal_color_14 = g:xbliss_colors["light_purple"]
    let g:terminal_color_15 = g:xbliss_colors["base7"]
  endif

  call GHighlight("Normal", "base7", "base0")
  call GHighlight("Cursor", "base0", "base7")
  call GHighlight("None", "base7", "none")
  call GHighlight("CursorLineNr", "base7", "base1")
  call GHighlight("EndOfBuffer", "base0", "base0")
  call GHighlight("FoldColumn", "base4", "none")
  call GHighlight("Folded", "base4", "base2")
  call GHighlight("LineNr", "base4", "none")
  call GHighlight("MatchWord", "base7", "deep_blue0")
  call GHighlight("SignColumn", "base4", "none")
  call GHighlight("Signify", "deep_blue1", "none")
  call GHighlight("Ignore", "base4", "none")
  call GHighlight("Pmenu", "base7", "base2")
  call GHighlight("PmenuSbar", "base2", "base2")
  call GHighlight("PmenuSel", "base7", "deep_blue0")
  call GHighlight("PmenuThumb", "base3", "base3")
  call GHighlight("ErrorMsg", "red", "none")
  call GHighlight("ModeMsg", "base5", "none")
  call GHighlight("MoreMsg", "pink", "none")
  call GHighlight("Question", "pink", "none")
  call GHighlight("WarningMsg", "light_purple", "none")
  call GHighlight("ColorColumn", "none", "base1")
  call GHighlight("CursorColumn", "none", "base1")
  call GHighlight("CursorLine", "none", "base1")
  call GHighlight("QuickFixLine", "base7", "deep_blue0")
  call GHighlight("StatusLine", "base7", "base3")
  call GHighlight("StatusLineNC", "base5", "base2")
  call GHighlight("VertSplit", "base2", "base2")
  call GHighlight("WildMenu", "base7", "deep_blue0")
  call GHighlight("IncSearch", "base0", "deep_yellow")
  call GHighlight("Search", "base7", "base3")
  call GHighlight("Visual", "none", "base3")
  call GHighlight("DiffAdd", "light_teal", "green")
  call GHighlight("DiffChange", "light_purple", "none")
  call GHighlight("DiffDelete", "red", "red")
  call GHighlight("DiffText", "light_purple", "orange")
  call GHighlight("Comment", "base4", "none")
  call GHighlight("Error", "base0", "red")
  call GHighlight("PreProc", "light_blue", "none")
  call GHighlight("Special", "purp", "none")
  call GHighlight("Statement", "red", "none")
  call GHighlight("Character", "yellow", "none")
  call GHighlight("Directory", "light_purple", "none")
  call GHighlight("Number", "yellow", "none")
  call GHighlight("SpecialComment", "base6", "none")
  call GHighlight("String", "orange", "none")
  call GHighlightBold("Title", "base7", "none")
  call GHighlightBold("Todo", "base6", "none")
  call GHighlightUnderline("Underlined", "light_blue", "none")
  call GHighlightUndercurl("SpellBad", "none", "none")
  call GHighlightUndercurl("SpellCap", "none", "none")
  call GHighlightUndercurl("SpellLocal", "none", "none")
  call GHighlightUndercurl("SpellRare", "none", "none")

  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link MsgArea Title
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Constant LibraryIdent
  hi! link Float Number
  hi! link StringDelimiter String
  hi! link Identifier LocalIdent
  hi! link Function LibraryFunc
  hi! link Boolean Statement
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Include Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Structure Statement
  hi! link Define PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Type LibraryType
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Noise Delimiter
  hi! link Quote StringDelimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link ALEVirtualTextError ErrorMsg
  hi! link ALEVirtualTextWarning WarningMsg
  hi! link Searchlight IncSearch
  hi! link SignifySignAdd Signify
  hi! link SignifySignChange Signify
  hi! link SignifySignDelete Signify
  hi! link bibEntryKw LibraryIdent
  hi! link bibKey IdentifierDef
  hi! link bibType LibraryType
  hi! link cssAtRule Keyword
  hi! link cssAttr Keyword
  hi! link cssBraces cssNoise
  hi! link cssClassName LocalIdent
  hi! link cssColor cssAttr
  hi! link cssFunction None
  hi! link cssIdentifier LocalIdent
  hi! link cssProp LibraryType
  hi! link cssPseudoClassId LibraryIdent
  hi! link cssSelectorOp Operator
  hi! link gitcommitHeader Todo
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link goField LocalIdent
  hi! link goFunction FunctionDef
  hi! link goFunctionCall LibraryFunc
  hi! link goVarAssign LocalIdent
  hi! link goVarDefs IdentifierDef
  hi! link helpCommand helpExample
  hi! link helpExample markdownCode
  hi! link helpHeadline Title
  hi! link helpHyperTextEntry Comment
  hi! link helpHyperTextJump Underlined
  hi! link helpSectionDelim Ignore
  hi! link helpURL helpHyperTextJump
  hi! link helpVim Title
  hi! link htmlArg Special
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link jinjaBlockName Typedef
  hi! link jinjaFilter LibraryFunc
  hi! link jinjaNumber Number
  hi! link jinjaOperator Operator
  hi! link jinjaRawDelim PreProc
  hi! link jinjaSpecial Keyword
  hi! link jinjaString String
  hi! link jinjaTagDelim Delimiter
  hi! link jinjaVarDelim Delimiter
  hi! link jsBuiltins LibraryFunc
  hi! link jsClassDefinition Typedef
  hi! link jsDomErrNo LibraryIdent
  hi! link jsDomNodeConsts LibraryIdent
  hi! link jsExceptions LibraryType
  hi! link jsFuncArgCommas jsNoise
  hi! link jsFuncName FunctionDef
  hi! link jsFunction jsStatement
  hi! link jsGlobalNodeObjects jsGlobalObjects
  hi! link jsGlobalObjects LibraryType
  hi! link jsObjectProp LocalIdent
  hi! link jsOperatorKeyword jsStatement
  hi! link jsThis jsStatement
  hi! link jsVariableDef IdentifierDef
  hi! link jsonKeyword jsonString
  hi! link jsonKeywordMatch Operator
  hi! link jsonQuote StringDelimiter
  hi! link rsForeignConst LibraryIdent
  hi! link rsForeignFunc LibraryFunc
  hi! link rsForeignType LibraryType
  hi! link rsFuncDef FunctionDef
  hi! link rsIdentDef IdentifierDef
  hi! link rsLibraryConst LibraryIdent
  hi! link rsLibraryFunc LibraryFunc
  hi! link rsLibraryType LibraryType
  hi! link rsLifetimeDef IdentifierDef
  hi! link rsSpecialLifetime LibraryIdent
  hi! link rsUserConst LocalIdent
  hi! link rsUserFunc LocalFunc
  hi! link rsUserLifetime LocalIdent
  hi! link rsUserMethod LibraryFunc
  hi! link rsUserType LocalType
  hi! link scssAttribute cssNoise
  hi! link scssInclude Keyword
  hi! link scssMixin Keyword
  hi! link scssMixinName LocalFunc
  hi! link scssMixinParams cssNoise
  hi! link scssSelectorName cssClassName
  hi! link scssVariableAssignment Operator
  hi! link scssVariableValue Operator
  hi! link swiftFuncDef FunctionDef
  hi! link swiftIdentDef IdentifierDef
  hi! link swiftLibraryFunc LibraryFunc
  hi! link swiftLibraryProp LibraryIdent
  hi! link swiftLibraryType LibraryType
  hi! link swiftUserFunc LocalFunc
  hi! link swiftUserProp LocalIdent
  hi! link swiftUserType LocalType
  hi! link typescriptArrayMethod LibraryFunc
  hi! link typescriptArrowFunc Operator
  hi! link typescriptAssign Operator
  hi! link typescriptBOM LibraryType
  hi! link typescriptBOMWindowCons LibraryType
  hi! link typescriptBOMWindowMethod LibraryFunc
  hi! link typescriptBOMWindowProp LibraryType
  hi! link typescriptBinaryOp Operator
  hi! link typescriptBraces Delimiter
  hi! link typescriptCall None
  hi! link typescriptClassHeritage Type
  hi! link typescriptClassName TypeDef
  hi! link typescriptDOMDocMethod LibraryFunc
  hi! link typescriptDOMDocProp LibraryIdent
  hi! link typescriptDOMEventCons LibraryType
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventProp LibraryIdent
  hi! link typescriptDOMEventTargetMethod LibraryFunc
  hi! link typescriptDOMNodeMethod LibraryFunc
  hi! link typescriptDOMStorageMethod LibraryIdent
  hi! link typescriptEndColons Delimiter
  hi! link typescriptExport Keyword
  hi! link typescriptFuncName FunctionDef
  hi! link typescriptFuncTypeArrow typescriptArrowFunc
  hi! link typescriptGlobal typescriptPredefinedType
  hi! link typescriptIdentifier Keyword
  hi! link typescriptInterfaceName Typedef
  hi! link typescriptMember LocalFunc
  hi! link typescriptObjectLabel LocalIdent
  hi! link typescriptOperator Keyword
  hi! link typescriptParens Delimiter
  hi! link typescriptPredefinedType LibraryType
  hi! link typescriptTypeAnnotation Delimiter
  hi! link typescriptTypeReference typescriptUserDefinedType
  hi! link typescriptUserDefinedType LocalType
  hi! link typescriptVariable Keyword
  hi! link typescriptVariableDeclaration IdentifierDef
  hi! link vimAutoCmdSfxList LibraryType
  hi! link vimAutoEventList LocalIdent
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimFuncName LibraryFunc
  hi! link vimFunction FunctionDef
  hi! link vimHighlight Statement
  hi! link vimMapModKey vimNotation
  hi! link vimNotation LibraryType
  hi! link vimOption LibraryIdent
  hi! link vimUserFunc LocalFunc
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownLinkDelimiter markdownDelimiter
  hi! link markdownLinkText None
  hi! link markdownLinkTextDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi! link markdownRule markdownDelimiter
  hi! link markdownUrl Underlined
  
  call GHighlight("CocHintSign", "some_purple", "none")
  call GHighlight("markdownDelimiter", "teal", "none")
  call GHighlight("markdownCode", "light_purple", "base2")
  call GHighlight("Typedef", "green", "none")
  call GHighlight("LocalType", "light_purple", "none")
  call GHighlight("LibraryType", "purple", "none")
  call GHighlight("FunctionDef", "blue", "none")
  call GHighlight("LocalFunc", "light_purple", "none")
  call GHighlight("LibraryFunc", "blue", "none")
  call GHighlight("IdentifierDef", "blue", "none")
  call GHighlight("LocalIdent", "green", "none")
  call GHighlight("LibraryIdent", "orange", "none")
  call GHighlight("MatchParen", "base7", "deep_blue0")
  call GHighlight("Delimiter", "base6", "none")
  call GHighlight("Operator", "base6", "none")

  unlet s:t_Co
  finish
endif

if s:t_Co >= 256
  let g:indentLine_color_gui  = g:xbliss_colors["base4"]
  let g:indentLine_color_term = 59
  let g:limelight_conceal_guifg = g:xbliss_colors["base5"]
  let g:limelight_conceal_ctermfg = 245

  if !has('patch-8.0.0616') && !has('nvim') " Fix for Vim bug
    set background=dark
  endif

  hi Normal ctermfg=254 ctermbg=235 cterm=NONE
  hi Cursor ctermfg=235 ctermbg=254 cterm=NONE
  hi None ctermfg=254 ctermbg=NONE cterm=NONE
  hi CursorLineNr ctermfg=254 ctermbg=236 cterm=NONE
  hi EndOfBuffer ctermfg=235 ctermbg=235 cterm=NONE
  hi FoldColumn ctermfg=59 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=59 ctermbg=237 cterm=NONE
  hi LineNr ctermfg=59 ctermbg=NONE cterm=NONE
  hi MatchWord ctermfg=254 ctermbg=26 cterm=NONE
  hi SignColumn ctermfg=59 ctermbg=NONE cterm=NONE
  hi Signify ctermfg=32 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=59 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=254 ctermbg=237 cterm=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 cterm=NONE
  hi PmenuSel ctermfg=254 ctermbg=26 cterm=NONE
  hi PmenuThumb ctermfg=238 ctermbg=238 cterm=NONE
  hi ErrorMsg ctermfg=210 ctermbg=NONE cterm=NONE
  hi ModeMsg ctermfg=245 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=211 ctermbg=NONE cterm=NONE
  hi Question ctermfg=211 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=215 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi QuickFixLine ctermfg=254 ctermbg=26 cterm=NONE
  hi StatusLine ctermfg=254 ctermbg=238 cterm=NONE
  hi StatusLineNC ctermfg=245 ctermbg=237 cterm=NONE
  hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE
  hi WildMenu ctermfg=254 ctermbg=26 cterm=NONE
  hi IncSearch ctermfg=235 ctermbg=226 cterm=NONE
  hi Search ctermfg=254 ctermbg=238 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=238 cterm=NONE
  hi DiffAdd ctermfg=159 ctermbg=236 cterm=NONE
  hi DiffChange ctermfg=215 ctermbg=NONE cterm=NONE
  hi DiffDelete ctermfg=210 ctermbg=236 cterm=NONE
  hi DiffText ctermfg=215 ctermbg=236 cterm=NONE
  hi Comment ctermfg=245 ctermbg=NONE cterm=NONE
  hi Error ctermfg=235 ctermbg=210 cterm=NONE
  hi PreProc ctermfg=215 ctermbg=NONE cterm=NONE
  hi Special ctermfg=73 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=211 ctermbg=NONE cterm=NONE
  hi Character ctermfg=186 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=81 ctermbg=NONE cterm=NONE
  hi Number ctermfg=186 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=145 ctermbg=NONE cterm=NONE
  hi String ctermfg=210 ctermbg=NONE cterm=NONE
  hi Title ctermfg=254 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=145 ctermbg=NONE cterm=bold
  hi Underlined ctermfg=81 ctermbg=NONE cterm=underline
  hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link MsgArea Title
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Constant LibraryIdent
  hi! link Float Number
  hi! link StringDelimiter String
  hi! link Identifier LocalIdent
  hi! link Function LibraryFunc
  hi! link Boolean Statement
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Include Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Structure Statement
  hi! link Define PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Type LibraryType
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Noise Delimiter
  hi! link Quote StringDelimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link ALEVirtualTextError ErrorMsg
  hi! link ALEVirtualTextWarning WarningMsg
  hi! link Searchlight IncSearch
  hi! link SignifySignAdd Signify
  hi! link SignifySignChange Signify
  hi! link SignifySignDelete Signify
  hi! link bibEntryKw LibraryIdent
  hi! link bibKey IdentifierDef
  hi! link bibType LibraryType
  hi! link cssAtRule Keyword
  hi! link cssAttr Keyword
  hi! link cssBraces cssNoise
  hi! link cssClassName LocalIdent
  hi! link cssColor cssAttr
  hi! link cssFunction None
  hi! link cssIdentifier LocalIdent
  hi! link cssProp LibraryType
  hi! link cssPseudoClassId LibraryIdent
  hi! link cssSelectorOp Operator
  hi! link gitcommitHeader Todo
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link goField LocalIdent
  hi! link goFunction FunctionDef
  hi! link goFunctionCall LibraryFunc
  hi! link goVarAssign LocalIdent
  hi! link goVarDefs IdentifierDef
  hi! link helpCommand helpExample
  hi! link helpExample markdownCode
  hi! link helpHeadline Title
  hi! link helpHyperTextEntry Comment
  hi! link helpHyperTextJump Underlined
  hi! link helpSectionDelim Ignore
  hi! link helpURL helpHyperTextJump
  hi! link helpVim Title
  hi! link htmlArg Special
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link jinjaBlockName Typedef
  hi! link jinjaFilter LibraryFunc
  hi! link jinjaNumber Number
  hi! link jinjaOperator Operator
  hi! link jinjaRawDelim PreProc
  hi! link jinjaSpecial Keyword
  hi! link jinjaString String
  hi! link jinjaTagDelim Delimiter
  hi! link jinjaVarDelim Delimiter
  hi! link jsBuiltins LibraryFunc
  hi! link jsClassDefinition Typedef
  hi! link jsDomErrNo LibraryIdent
  hi! link jsDomNodeConsts LibraryIdent
  hi! link jsExceptions LibraryType
  hi! link jsFuncArgCommas jsNoise
  hi! link jsFuncName FunctionDef
  hi! link jsFunction jsStatement
  hi! link jsGlobalNodeObjects jsGlobalObjects
  hi! link jsGlobalObjects LibraryType
  hi! link jsObjectProp LocalIdent
  hi! link jsOperatorKeyword jsStatement
  hi! link jsThis jsStatement
  hi! link jsVariableDef IdentifierDef
  hi! link jsonKeyword jsonString
  hi! link jsonKeywordMatch Operator
  hi! link jsonQuote StringDelimiter
  hi! link rsForeignConst LibraryIdent
  hi! link rsForeignFunc LibraryFunc
  hi! link rsForeignType LibraryType
  hi! link rsFuncDef FunctionDef
  hi! link rsIdentDef IdentifierDef
  hi! link rsLibraryConst LibraryIdent
  hi! link rsLibraryFunc LibraryFunc
  hi! link rsLibraryType LibraryType
  hi! link rsLifetimeDef IdentifierDef
  hi! link rsSpecialLifetime LibraryIdent
  hi! link rsUserConst LocalIdent
  hi! link rsUserFunc LocalFunc
  hi! link rsUserLifetime LocalIdent
  hi! link rsUserMethod LibraryFunc
  hi! link rsUserType LocalType
  hi! link scssAttribute cssNoise
  hi! link scssInclude Keyword
  hi! link scssMixin Keyword
  hi! link scssMixinName LocalFunc
  hi! link scssMixinParams cssNoise
  hi! link scssSelectorName cssClassName
  hi! link scssVariableAssignment Operator
  hi! link scssVariableValue Operator
  hi! link swiftFuncDef FunctionDef
  hi! link swiftIdentDef IdentifierDef
  hi! link swiftLibraryFunc LibraryFunc
  hi! link swiftLibraryProp LibraryIdent
  hi! link swiftLibraryType LibraryType
  hi! link swiftUserFunc LocalFunc
  hi! link swiftUserProp LocalIdent
  hi! link swiftUserType LocalType
  hi! link typescriptArrayMethod LibraryFunc
  hi! link typescriptArrowFunc Operator
  hi! link typescriptAssign Operator
  hi! link typescriptBOM LibraryType
  hi! link typescriptBOMWindowCons LibraryType
  hi! link typescriptBOMWindowMethod LibraryFunc
  hi! link typescriptBOMWindowProp LibraryType
  hi! link typescriptBinaryOp Operator
  hi! link typescriptBraces Delimiter
  hi! link typescriptCall None
  hi! link typescriptClassHeritage Type
  hi! link typescriptClassName TypeDef
  hi! link typescriptDOMDocMethod LibraryFunc
  hi! link typescriptDOMDocProp LibraryIdent
  hi! link typescriptDOMEventCons LibraryType
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventProp LibraryIdent
  hi! link typescriptDOMEventTargetMethod LibraryFunc
  hi! link typescriptDOMNodeMethod LibraryFunc
  hi! link typescriptDOMStorageMethod LibraryIdent
  hi! link typescriptEndColons Delimiter
  hi! link typescriptExport Keyword
  hi! link typescriptFuncName FunctionDef
  hi! link typescriptFuncTypeArrow typescriptArrowFunc
  hi! link typescriptGlobal typescriptPredefinedType
  hi! link typescriptIdentifier Keyword
  hi! link typescriptInterfaceName Typedef
  hi! link typescriptMember LocalFunc
  hi! link typescriptObjectLabel LocalIdent
  hi! link typescriptOperator Keyword
  hi! link typescriptParens Delimiter
  hi! link typescriptPredefinedType LibraryType
  hi! link typescriptTypeAnnotation Delimiter
  hi! link typescriptTypeReference typescriptUserDefinedType
  hi! link typescriptUserDefinedType LocalType
  hi! link typescriptVariable Keyword
  hi! link typescriptVariableDeclaration IdentifierDef
  hi! link vimAutoCmdSfxList LibraryType
  hi! link vimAutoEventList LocalIdent
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimFuncName LibraryFunc
  hi! link vimFunction FunctionDef
  hi! link vimHighlight Statement
  hi! link vimMapModKey vimNotation
  hi! link vimNotation LibraryType
  hi! link vimOption LibraryIdent
  hi! link vimUserFunc LocalFunc
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownLinkDelimiter markdownDelimiter
  hi! link markdownLinkText None
  hi! link markdownLinkTextDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi! link markdownRule markdownDelimiter
  hi! link markdownUrl Underlined
  hi markdownDelimiter ctermfg=73 ctermbg=NONE cterm=NONE
  hi markdownCode ctermfg=183 ctermbg=237 cterm=NONE
  hi Typedef ctermfg=81 ctermbg=NONE cterm=NONE
  hi LocalType ctermfg=159 ctermbg=NONE cterm=NONE
  hi LibraryType ctermfg=183 ctermbg=NONE cterm=NONE
  hi FunctionDef ctermfg=38 ctermbg=NONE cterm=NONE
  hi LocalFunc ctermfg=73 ctermbg=NONE cterm=NONE
  hi LibraryFunc ctermfg=141 ctermbg=NONE cterm=NONE
  hi IdentifierDef ctermfg=38 ctermbg=NONE cterm=NONE
  hi LocalIdent ctermfg=73 ctermbg=NONE cterm=NONE
  hi LibraryIdent ctermfg=141 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=254 ctermbg=26 cterm=NONE
  hi Delimiter ctermfg=145 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=145 ctermbg=NONE cterm=NONE

  unlet s:t_Co
  finish
endif

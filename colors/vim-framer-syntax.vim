" ===============================================================
" vim-framer-syntax
" 
" URL: 
" Author: 
" License: MIT
" Last Change: 2019/07/19 09:47
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="vim-framer-syntax"

hi Cursor guifg=#181818 ctermfg=234 guibg=#FB5599 ctermbg=204 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#151515 ctermbg=233 gui=NONE cterm=NONE
hi CursorLineNR guifg=#777777 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#EEEEEE ctermfg=255 guibg=#FB5599 ctermbg=204 gui=NONE cterm=NONE
hi ErrorMsg guifg=#EEEEEE ctermfg=255 guibg=#FB5599 ctermbg=204 gui=NONE cterm=NONE
hi Folded guifg=#23CCDD ctermfg=44 guibg=#151515 ctermbg=233 gui=NONE cterm=NONE
hi LineNr guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=NONE ctermfg=NONE guibg=#2E343A ctermbg=236 gui=NONE cterm=NONE
hi SignColumn guifg=#333333 ctermfg=236 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi VertSplit guifg=#333333 ctermfg=236 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi NonText guifg=#181818 ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#EEEEEE ctermfg=255 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi Search guifg=NONE ctermfg=NONE guibg=#2E343A ctermbg=236 gui=NONE cterm=NONE
hi StatusLine guifg=#656565 ctermfg=242 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi StatusLineNC guifg=#656565 ctermfg=242 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#3a3d41 ctermbg=237 gui=NONE cterm=NONE
hi Boolean guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Comment guifg=#656565 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#EEEEEE ctermfg=255 guibg=#FB5599 ctermbg=204 gui=NONE cterm=NONE
hi Function guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#BB89FF ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFuncArgs guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsBooleanFalse guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsBooleanTrue guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsCatch guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassKeyword guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassFuncName guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsComment guifg=#656565 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsDestructuringBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsException guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExceptions guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncArgs guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncCall guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncParens guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunction guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsIfElseBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsModuleAs guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsModuleAsterisk guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsModuleBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNoise guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNumber guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectColon guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectProp guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectSeparator guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectValue guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsOperator guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParens guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsRepeat guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsReturn guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsStorageClass guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTry guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsThis guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsUndefined guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsEnvComment guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#CE9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonFold guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeyword guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonString guifg=#BB89FF ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlAnchor guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingMerge guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlDocumentStart guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlEscape guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowCollection guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowIndicator guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowMappingKey guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlMappingKeyStart guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlSingleEscape guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlAlias guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlNodeTag guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttrib guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEndTag guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEqual guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTag guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagName guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimHiAttrib guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAddress guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAutoCmd guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAutoEvent guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimBracket guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommand guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimContinue guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimGroup guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiCTerm guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiCtermFgBg guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiGroup guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiGui guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiGuiFgBg guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiKeyList guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimLet guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMap guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMapMod guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMapModKey guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimNotation guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimNumber guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOperParen guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOption guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimParenSep guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSep guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSetSep guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSubst1 guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSubstDelim guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSubstFlags guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSynType guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimUserFunc guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimVar guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyBoolean guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyClassDecl guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyELExpr guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyExceptions guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyJDKBuiltin guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyNumber guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyParen guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovySpecialChar guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyStatement guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyStorageClass guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyType guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi groovyUserLabel guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBold guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownBoldDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH2 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH3 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH4 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH5 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH6 guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownHeadingDelimiter guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownHeadingRule guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownItalicDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#BB89FF ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHeader guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextJump guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpOption guifg=#BB89FF ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraBraces guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraBrackets guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraSection guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraStringInterp guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshCommands guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshDeref guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshOldSubst guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshOptStart guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshQuoted guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshShortDeref guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshSubstDelim guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshTypes guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshKeyword guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshKSHFunction guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshDelimiter guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi bashStatement guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shOption guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shVariable guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDerefSimple guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shCmdSubRegion guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shSpecialNoZS guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shTestOpr guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDeref guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDerefVar guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shCaseLabel guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shSnglCase guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDblBrace guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStructure guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpKeyword guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpVarSelector guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifier guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpType guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStorageClass guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpDefine guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpSpecialFunction guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpComparison guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpException guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMemberSelector guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStatement guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonImport guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinObj guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinType guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonStatement guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonFunction guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonClassVar guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonDecorator guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonDottedName guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonException guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonStrInterpRegion guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonOperator guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erubyDelimiter guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyAttribute guifg=#BB89FF ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlock guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockParameter guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyClass guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyClassName guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConstant guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyControl guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCurlyBlockDelimiter guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDefine guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDoBlock guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInclude guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInstanceVariable guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInterpolationDelimiter guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyLocalVariableOrMethod guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyModule guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyModuleName guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyPseudoVariable guifg=#FB5599 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubySymbol guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyTodo guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraModule guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraResource guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraProvisioner guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraResourceTypeBI guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraResourceTypeStr guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraValueVarSubscript guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraValueFunction guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi terraValueBool guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CtrlPMatch guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeDir guifg=#23CCDD ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeDirSlash guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeFile guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#EEEEEE ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeUp guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeExecFile guifg=#FF8867 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeLinkFile guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeLinkTarget guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi dockerfileKeyword guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEErrorSign guifg=#FB5599 ctermfg=204 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi ALEWarningSign guifg=#FFCC66 ctermfg=221 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE
hi perlFiledescRead guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlFunction guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlFunctionName guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlMethod guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlOperator guifg=#EEAAFF ctermfg=219 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementControl guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementFiledesc guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementFlow guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementHash guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementInclude guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementPword guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementScalar guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementStorage guifg=#00BBFF ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlVarPlain guifg=#AADDFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementList guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementMisc guifg=#FFCC66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementIndirObj guifg=#999999 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================

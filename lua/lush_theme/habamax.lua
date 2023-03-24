--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    SpecialKey                             { fg="#585858", }, -- SpecialKey     xxx ctermfg=240 guifg=#585858
    EndOfBuffer                            { fg="#585858", }, -- EndOfBuffer    xxx ctermfg=240 guifg=#585858
    NvimTreeEndOfBuffer                    { EndOfBuffer }, -- NvimTreeEndOfBuffer xxx links to EndOfBuffer
    TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    GitSignsAddInline                      { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
    GitSignsDeleteInline                   { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
    GitSignsChangeInline                   { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
    NonText                                { fg="#585858", }, -- NonText        xxx ctermfg=240 guifg=#585858
    Whitespace                             { NonText }, -- Whitespace     xxx links to NonText
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopePromptCounter                 { NonText }, -- TelescopePromptCounter xxx links to NonText
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    GitSignsCurrentLineBlame               { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
    Directory                              { fg="#87afaf", gui="bold", }, -- Directory      xxx cterm=bold ctermfg=109 gui=bold guifg=#87afaf
    NvimTreeOpenedFolderName               { Directory }, -- NvimTreeOpenedFolderName xxx links to Directory
    NvimTreeFolderName                     { Directory }, -- NvimTreeFolderName xxx links to Directory
    NvimTreeEmptyFolderName                { Directory }, -- NvimTreeEmptyFolderName xxx links to Directory
    TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate xxx links to Directory
    ErrorMsg                               { bg="#1c1c1c", gui="reverse", fg="#d75f5f", }, -- ErrorMsg       xxx cterm=reverse ctermfg=167 ctermbg=234 gui=reverse guifg=#d75f5f guibg=#1c1c1c
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    LazyTaskError                          { ErrorMsg }, -- LazyTaskError  xxx links to ErrorMsg
    IncSearch                              { fg="#1c1c1c", bg="#ffaf5f", }, -- IncSearch      xxx ctermfg=234 ctermbg=215 guifg=#1c1c1c guibg=#ffaf5f
    LazyH1                                 { IncSearch }, -- LazyH1         xxx links to IncSearch
    Search                                 { fg="#1c1c1c", bg="#87af87", }, -- Search         xxx ctermfg=234 ctermbg=108 guifg=#1c1c1c guibg=#87af87
    Substitute                             { Search }, -- Substitute     xxx links to Search
    TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch xxx links to Search
    CurSearch                              { fg="#1c1c1c", bg="#afaf87", }, -- CurSearch      xxx ctermfg=234 ctermbg=144 guifg=#1c1c1c guibg=#afaf87
    MoreMsg                                { fg="#87af87", }, -- MoreMsg        xxx ctermfg=108 guifg=#87af87
    ModeMsg                                { fg="#1c1c1c", bg="#d7d787", }, -- ModeMsg        xxx ctermfg=234 ctermbg=186 guifg=#1c1c1c guibg=#d7d787
    LineNr                                 { fg="#585858", }, -- LineNr         xxx ctermfg=240 guifg=#585858
    LazyProgressTodo                       { LineNr }, -- LazyProgressTodo xxx links to LineNr
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    NvimTreeLineNr                         { LineNr }, -- NvimTreeLineNr xxx links to LineNr
    LineNrAbove                            { fg="#585858", }, -- LineNrAbove    xxx ctermfg=240 guifg=#585858
    LineNrBelow                            { fg="#585858", }, -- LineNrBelow    xxx ctermfg=240 guifg=#585858
    CursorLineNr                           { fg="#ffaf5f", gui="bold", }, -- CursorLineNr   xxx cterm=bold ctermfg=215 gui=bold guifg=#ffaf5f
    NvimTreeCursorLineNr                   { CursorLineNr }, -- NvimTreeCursorLineNr xxx links to CursorLineNr
    Question                               { fg="#afaf87", }, -- Question       xxx ctermfg=144 guifg=#afaf87
    StatusLine                             { fg="#1c1c1c", bg="#9e9e9e", }, -- StatusLine     xxx ctermfg=234 ctermbg=247 guifg=#1c1c1c guibg=#9e9e9e
    MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    StatusLineTerm                         { StatusLine }, -- StatusLineTerm xxx links to StatusLine
    NvimTreeStatusLine                     { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
    StatusLineNC                           { fg="#1c1c1c", bg="#767676", }, -- StatusLineNC   xxx ctermfg=234 ctermbg=243 guifg=#1c1c1c guibg=#767676
    StatusLineTermNC                       { StatusLineNC }, -- StatusLineTermNC xxx links to StatusLineNC
    NvimTreeStatusLineNC                   { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
    VertSplit                              { fg="#767676", bg="#767676", }, -- VertSplit      xxx ctermfg=243 ctermbg=243 guifg=#767676 guibg=#767676
    WinSeparator                           { VertSplit }, -- WinSeparator   xxx links to VertSplit
    Title                                  { fg="#d7d787", gui="bold", }, -- Title          xxx cterm=bold ctermfg=186 gui=bold guifg=#d7d787
    FloatTitle                             { Title }, -- FloatTitle     xxx links to Title
    LazyCommitType                         { Title }, -- LazyCommitType xxx links to Title
    NullLsInfoSources                      { Title }, -- NullLsInfoSources xxx links to Title
    LspInfoTitle                           { Title }, -- LspInfoTitle   xxx links to Title
    gitCommitSummary                       { Title }, -- gitCommitSummary xxx links to Title
    Visual                                 { fg="#1c1c1c", bg="#87afaf", }, -- Visual         xxx ctermfg=234 ctermbg=109 guifg=#1c1c1c guibg=#87afaf
    LazyButtonActive                       { Visual }, -- LazyButtonActive xxx links to Visual
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
    WarningMsg                             { fg="#d7875f", }, -- WarningMsg     xxx ctermfg=173 guifg=#d7875f
    WildMenu                               { fg="#1c1c1c", bg="#d7d787", }, -- WildMenu       xxx ctermfg=234 ctermbg=186 guifg=#1c1c1c guibg=#d7d787
    Folded                                 { fg="#9e9e9e", bg="#262626", }, -- Folded         xxx ctermfg=247 ctermbg=235 guifg=#9e9e9e guibg=#262626
    FoldColumn                             { fg="#585858", }, -- FoldColumn     xxx ctermfg=240 guifg=#585858
    CursorLineFold                         { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                { fg="#000000", bg="#87af87", }, -- DiffAdd        xxx ctermfg=16 ctermbg=108 guifg=#000000 guibg=#87af87
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    GitSignsAddLn                          { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    GitSignsAddPreview                     { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
    DiffChange                             { fg="#000000", bg="#afafaf", }, -- DiffChange     xxx ctermfg=16 ctermbg=145 guifg=#000000 guibg=#afafaf
    GitSignsChange                         { DiffChange }, -- GitSignsChange xxx links to DiffChange
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    GitSignsChangeLn                       { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    DiffDelete                             { fg="#af875f", }, -- DiffDelete     xxx ctermfg=137 guifg=#af875f
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    GitSignsDeletePreview                  { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
    GitSignsDeleteVirtLn                   { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    DiffText                               { fg="#000000", bg="#d7d7d7", }, -- DiffText       xxx ctermfg=16 ctermbg=188 guifg=#000000 guibg=#d7d7d7
    Conceal                                { fg="#767676", }, -- Conceal        xxx ctermfg=243 guifg=#767676
    LazyProp                               { Conceal }, -- LazyProp       xxx links to Conceal
    LazyDimmed                             { Conceal }, -- LazyDimmed     xxx links to Conceal
    SpellBad                               { sp="#d75f5f", gui="undercurl", }, -- SpellBad       xxx cterm=underline ctermfg=167 gui=undercurl guisp=#d75f5f
    SpellCap                               { sp="#5f87af", gui="undercurl", }, -- SpellCap       xxx cterm=underline ctermfg=67 gui=undercurl guisp=#5f87af
    SpellRare                              { sp="#d7afd7", gui="undercurl", }, -- SpellRare      xxx cterm=underline ctermfg=182 gui=undercurl guisp=#d7afd7
    SpellLocal                             { sp="#87af87", gui="undercurl", }, -- SpellLocal     xxx cterm=underline ctermfg=108 gui=undercurl guisp=#87af87
    Pmenu                                  { bg="#262626", }, -- Pmenu          xxx ctermbg=235 guibg=#262626
    PmenuKind                              { Pmenu }, -- PmenuKind      xxx links to Pmenu
    PmenuExtra                             { Pmenu }, -- PmenuExtra     xxx links to Pmenu
    NormalFloat                            { Pmenu }, -- NormalFloat    xxx links to Pmenu
    MessageWindow                          { Pmenu }, -- MessageWindow  xxx links to Pmenu
    PmenuSel                               { fg="#1c1c1c", bg="#afaf87", }, -- PmenuSel       xxx ctermfg=234 ctermbg=144 guifg=#1c1c1c guibg=#afaf87
    PmenuKindSel                           { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
    PmenuExtraSel                          { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
    PmenuThumb                             { bg="#767676", }, -- PmenuThumb     xxx ctermbg=243 guibg=#767676
    TabLine                                { fg="#1c1c1c", bg="#767676", }, -- TabLine        xxx ctermfg=234 ctermbg=243 guifg=#1c1c1c guibg=#767676
    TabLineSel                             { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
    TabLineFill                            { fg="#1c1c1c", bg="#767676", }, -- TabLineFill    xxx ctermfg=234 ctermbg=243 guifg=#1c1c1c guibg=#767676
    CursorColumn                           { bg="#303030", }, -- CursorColumn   xxx ctermbg=236 guibg=#303030
    NvimTreeCursorColumn                   { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
    CursorLine                             { bg="#303030", }, -- CursorLine     xxx ctermbg=236 guibg=#303030
    LazyButton                             { CursorLine }, -- LazyButton     xxx links to CursorLine
    NvimTreeCursorLine                     { CursorLine }, -- NvimTreeCursorLine xxx links to CursorLine
    ColorColumn                            { bg="#262626", }, -- ColorColumn    xxx ctermbg=235 guibg=#262626
    QuickFixLine                           { fg="#1c1c1c", bg="#5f87af", }, -- QuickFixLine   xxx ctermfg=234 ctermbg=67 guifg=#1c1c1c guibg=#5f87af
    WinBar                                 { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
    WinBarNC                               { WinBar }, -- WinBarNC       xxx links to WinBar
    Cursor                                 { fg="#1c1c1c", bg="#ffaf5f", }, -- Cursor         xxx guifg=#1c1c1c guibg=#ffaf5f
    lCursor                                { fg="#1c1c1c", bg="#5fff00", }, -- lCursor        xxx guifg=#1c1c1c guibg=#5fff00
    Normal                                 { fg="#bcbcbc", bg="#1c1c1c", }, -- Normal         xxx ctermfg=250 ctermbg=234 guifg=#bcbcbc guibg=#1c1c1c
    NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
    NvimTreeNormal                         { Normal }, -- NvimTreeNormal xxx links to Normal
    NvimTreePopup                          { Normal }, -- NvimTreePopup  xxx links to Normal
    Terminal                               { Normal }, -- Terminal       xxx links to Normal
    vimVar                                 { Normal }, -- vimVar         xxx links to Normal
    vimOper                                { Normal }, -- vimOper        xxx links to Normal
    vimSep                                 { Normal }, -- vimSep         xxx links to Normal
    vimParenSep                            { Normal }, -- vimParenSep    xxx links to Normal
    FloatShadow                            { bg="black", blend=80, }, -- FloatShadow    xxx guibg=Black blend=80
    FloatShadowThrough                     { bg="black", blend=100, }, -- FloatShadowThrough xxx guibg=Black blend=100
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
    RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
    Error                                  { bg="#1c1c1c", gui="reverse", fg="#d75f5f", }, -- Error          xxx cterm=reverse ctermfg=167 ctermbg=234 gui=reverse guifg=#d75f5f guibg=#1c1c1c
    NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
    luaParenError                          { Error }, -- luaParenError  xxx links to Error
    luaError                               { Error }, -- luaError       xxx links to Error
    Todo                                   { bg="#1c1c1c", gui="reverse", fg="#d7d787", }, -- Todo           xxx cterm=reverse ctermfg=186 ctermbg=234 gui=reverse guifg=#d7d787 guibg=#1c1c1c
    sym"@text.todo"                        { Todo }, -- @text.todo     xxx links to Todo
    luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
    PopupNotification                      { Todo }, -- PopupNotification xxx links to Todo
    String                                 { fg="#87af87", }, -- String         xxx ctermfg=108 guifg=#87af87
    sym"@string"                           { String }, -- @string        xxx links to String
    NvimString                             { String }, -- NvimString     xxx links to String
    markdownUrl                            { String }, -- markdownUrl    xxx links to String
    TelescopePreviewSize                   { String }, -- TelescopePreviewSize xxx links to String
    TelescopePreviewExecute                { String }, -- TelescopePreviewExecute xxx links to String
    luaString2                             { String }, -- luaString2     xxx links to String
    luaString                              { String }, -- luaString      xxx links to String
    elixirDocTest                          { String }, -- elixirDocTest  xxx links to String
    Constant                               { fg="#d7875f", }, -- Constant       xxx ctermfg=173 guifg=#d7875f
    Number                                 { Constant }, -- Number         xxx links to Constant
    Boolean                                { Constant }, -- Boolean        xxx links to Constant
    sym"@constant"                         { Constant }, -- @constant      xxx links to Constant
    sym"@lsp.type.enumMember"              { Constant }, -- @lsp.type.enumMember xxx links to Constant
    LazyProgressDone                       { Constant }, -- LazyProgressDone xxx links to Constant
    LazyReasonEvent                        { Constant }, -- LazyReasonEvent xxx links to Constant
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
    Character                              { fg="#afd7af", }, -- Character      xxx ctermfg=151 guifg=#afd7af
    sym"@character"                        { Character }, -- @character     xxx links to Character
    LazyReasonFt                           { Character }, -- LazyReasonFt   xxx links to Character
    LazyReasonSource                       { Character }, -- LazyReasonSource xxx links to Character
    Identifier                             { fg="#87afaf", }, -- Identifier     xxx ctermfg=109 guifg=#87afaf
    Function                               { Identifier }, -- Function       xxx links to Identifier
    sym"@text.reference"                   { Identifier }, -- @text.reference xxx links to Identifier
    sym"@parameter"                        { Identifier }, -- @parameter     xxx links to Identifier
    sym"@field"                            { Identifier }, -- @field         xxx links to Identifier
    sym"@property"                         { Identifier }, -- @property      xxx links to Identifier
    sym"@variable"                         { Identifier }, -- @variable      xxx links to Identifier
    sym"@namespace"                        { Identifier }, -- @namespace     xxx links to Identifier
    sym"@lsp.type.parameter"               { Identifier }, -- @lsp.type.parameter xxx links to Identifier
    sym"@lsp.type.property"                { Identifier }, -- @lsp.type.property xxx links to Identifier
    sym"@lsp.type.variable"                { Identifier }, -- @lsp.type.variable xxx links to Identifier
    NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
    LazyReasonImport                       { Identifier }, -- LazyReasonImport xxx links to Identifier
    TelescopeMultiIcon                     { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
    Statement                              { fg="#af87af", }, -- Statement      xxx ctermfg=139 guifg=#af87af
    Conditional                            { Statement }, -- Conditional    xxx links to Statement
    Repeat                                 { Statement }, -- Repeat         xxx links to Statement
    Label                                  { Statement }, -- Label          xxx links to Statement
    Operator                               { Statement }, -- Operator       xxx links to Statement
    Keyword                                { Statement }, -- Keyword        xxx links to Statement
    Exception                              { Statement }, -- Exception      xxx links to Statement
    LazyReasonKeys                         { Statement }, -- LazyReasonKeys xxx links to Statement
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
    luaStatement                           { Statement }, -- luaStatement   xxx links to Statement
    javaScriptFunction                     { Statement }, -- javaScriptFunction xxx links to Statement
    javaScriptIdentifier                   { Statement }, -- javaScriptIdentifier xxx links to Statement
    sqlKeyword                             { Statement }, -- sqlKeyword     xxx links to Statement
    yamlBlockMappingKey                    { Statement }, -- yamlBlockMappingKey xxx links to Statement
    rubyMacro                              { Statement }, -- rubyMacro      xxx links to Statement
    rubyDefine                             { Statement }, -- rubyDefine     xxx links to Statement
    elixirOperator                         { Statement }, -- elixirOperator xxx links to Statement
    elixirKeyword                          { Statement }, -- elixirKeyword  xxx links to Statement
    elixirBlockDefinition                  { Statement }, -- elixirBlockDefinition xxx links to Statement
    elixirDefine                           { Statement }, -- elixirDefine   xxx links to Statement
    elixirPrivateDefine                    { Statement }, -- elixirPrivateDefine xxx links to Statement
    elixirGuard                            { Statement }, -- elixirGuard    xxx links to Statement
    elixirPrivateGuard                     { Statement }, -- elixirPrivateGuard xxx links to Statement
    elixirModuleDefine                     { Statement }, -- elixirModuleDefine xxx links to Statement
    elixirProtocolDefine                   { Statement }, -- elixirProtocolDefine xxx links to Statement
    elixirImplDefine                       { Statement }, -- elixirImplDefine xxx links to Statement
    elixirRecordDefine                     { Statement }, -- elixirRecordDefine xxx links to Statement
    elixirPrivateRecordDefine              { Statement }, -- elixirPrivateRecordDefine xxx links to Statement
    elixirMacroDefine                      { Statement }, -- elixirMacroDefine xxx links to Statement
    elixirPrivateMacroDefine               { Statement }, -- elixirPrivateMacroDefine xxx links to Statement
    elixirDelegateDefine                   { Statement }, -- elixirDelegateDefine xxx links to Statement
    elixirOverridableDefine                { Statement }, -- elixirOverridableDefine xxx links to Statement
    elixirExceptionDefine                  { Statement }, -- elixirExceptionDefine xxx links to Statement
    elixirCallbackDefine                   { Statement }, -- elixirCallbackDefine xxx links to Statement
    elixirStructDefine                     { Statement }, -- elixirStructDefine xxx links to Statement
    elixirExUnitMacro                      { Statement }, -- elixirExUnitMacro xxx links to Statement
    elixirInclude                          { Statement }, -- elixirInclude  xxx links to Statement
    PreProc                                { fg="#afaf87", }, -- PreProc        xxx ctermfg=144 guifg=#afaf87
    Include                                { PreProc }, -- Include        xxx links to PreProc
    Define                                 { PreProc }, -- Define         xxx links to PreProc
    Macro                                  { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                              { PreProc }, -- PreCondit      xxx links to PreProc
    sym"@preproc"                          { PreProc }, -- @preproc       xxx links to PreProc
    elixirAtom                             { PreProc }, -- elixirAtom     xxx links to PreProc
    Type                                   { fg="#87afd7", }, -- Type           xxx ctermfg=110 guifg=#87afd7
    StorageClass                           { Type }, -- StorageClass   xxx links to Type
    Structure                              { Type }, -- Structure      xxx links to Type
    Typedef                                { Type }, -- Typedef        xxx links to Type
    sym"@type"                             { Type }, -- @type          xxx links to Type
    sym"@lsp.type.type"                    { Type }, -- @lsp.type.type xxx links to Type
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
    TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection xxx links to Type
    NullLsInfoTitle                        { Type }, -- NullLsInfoTitle xxx links to Type
    LspInfoFiletype                        { Type }, -- LspInfoFiletype xxx links to Type
    Special                                { fg="#5f8787", }, -- Special        xxx ctermfg=66 guifg=#5f8787
    Tag                                    { Special }, -- Tag            xxx links to Special
    SpecialChar                            { Special }, -- SpecialChar    xxx links to Special
    Delimiter                              { Special }, -- Delimiter      xxx links to Special
    SpecialComment                         { Special }, -- SpecialComment xxx links to Special
    sym"@constructor"                      { Special }, -- @constructor   xxx links to Special
    LazyReasonPlugin                       { Special }, -- LazyReasonPlugin xxx links to Special
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
    Debug                                  { fg="#5f8787", }, -- Debug          xxx ctermfg=66 guifg=#5f8787
    sym"@debug"                            { Debug }, -- @debug         xxx links to Debug
    DiagnosticError                        { fg="red", }, -- DiagnosticError xxx ctermfg=1 guifg=Red
    DiagnosticVirtualTextError             { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError                    { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    NvimTreeLspDiagnosticsError            { DiagnosticError }, -- NvimTreeLspDiagnosticsError xxx links to DiagnosticError
    DiagnosticWarn                         { fg="orange", }, -- DiagnosticWarn xxx ctermfg=3 guifg=Orange
    DiagnosticVirtualTextWarn              { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                     { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    LazyNoCond                             { DiagnosticWarn }, -- LazyNoCond     xxx links to DiagnosticWarn
    NvimTreeLspDiagnosticsWarning          { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning xxx links to DiagnosticWarn
    DiagnosticInfo                         { fg="lightblue", }, -- DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
    DiagnosticVirtualTextInfo              { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                     { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    NvimTreeLspDiagnosticsInformation      { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation xxx links to DiagnosticInfo
    DiagnosticHint                         { fg="lightgrey", }, -- DiagnosticHint xxx ctermfg=7 guifg=LightGrey
    DiagnosticVirtualTextHint              { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint                     { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    NvimTreeLspDiagnosticsHint             { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint xxx links to DiagnosticHint
    DiagnosticOk                           { fg="lightgreen", }, -- DiagnosticOk   xxx ctermfg=10 guifg=LightGreen
    DiagnosticVirtualTextOk                { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
    DiagnosticFloatingOk                   { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
    DiagnosticSignOk                       { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
    DiagnosticUnderlineError               { sp="red", gui="underline", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
    DiagnosticUnderlineWarn                { sp="orange", gui="underline", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
    DiagnosticUnderlineInfo                { sp="lightblue", gui="underline", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
    DiagnosticUnderlineHint                { sp="lightgrey", gui="underline", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
    DiagnosticUnderlineOk                  { sp="lightgreen", gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=LightGreen
    Comment                                { fg="#767676", }, -- Comment        xxx ctermfg=243 guifg=#767676
    sym"@text.literal"                     { Comment }, -- @text.literal  xxx links to Comment
    sym"@comment"                          { Comment }, -- @comment       xxx links to Comment
    NvimTreeGitIgnored                     { Comment }, -- NvimTreeGitIgnored xxx links to Comment
    LazyComment                            { Comment }, -- LazyComment    xxx links to Comment
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
    luaComment                             { Comment }, -- luaComment     xxx links to Comment
    LspInfoTip                             { Comment }, -- LspInfoTip     xxx links to Comment
    vimCommentString                       { Comment }, -- vimCommentString xxx links to Comment
    Underlined                             { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
    MatchParen                             { bg="#1c1c1c", gui="reverse", fg="#5f8787", }, -- MatchParen     xxx cterm=reverse ctermfg=66 ctermbg=234 gui=reverse guifg=#5f8787 guibg=#1c1c1c
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimTreeRootFolder                     { fg="#af87af", }, -- NvimTreeRootFolder xxx guifg=#af87af
    NvimTreeGitDeleted                     { fg="#d7875f", }, -- NvimTreeGitDeleted xxx guifg=#d7875f
    NvimTreeFileDeleted                    { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
    NvimTreeGitRenamed                     { fg="#af87af", }, -- NvimTreeGitRenamed xxx guifg=#af87af
    NvimTreeFileRenamed                    { NvimTreeGitRenamed }, -- NvimTreeFileRenamed xxx links to NvimTreeGitRenamed
    NvimTreeGitNew                         { fg="#afaf87", }, -- NvimTreeGitNew xxx guifg=#afaf87
    NvimTreeFileNew                        { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
    NvimTreeGitStaged                      { fg="#87af87", }, -- NvimTreeGitStaged xxx guifg=#87af87
    NvimTreeFileStaged                     { NvimTreeGitStaged }, -- NvimTreeFileStaged xxx links to NvimTreeGitStaged
    NvimTreeSpecialFile                    { fg="#afaf87", gui="bold,underline", }, -- NvimTreeSpecialFile xxx gui=bold,underline guifg=#afaf87
    NvimTreeOpenedFile                     { fg="#87af87", gui="bold", }, -- NvimTreeOpenedFile xxx gui=bold guifg=#87af87
    NvimTreeGitMerge                       { fg="#d7d787", }, -- NvimTreeGitMerge xxx guifg=#d7d787
    NvimTreeFileMerge                      { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
    NvimTreeGitDirty                       { fg="#d7875f", }, -- NvimTreeGitDirty xxx guifg=#d7875f
    NvimTreeFileDirty                      { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
    NvimTreeImageFile                      { fg="#af87af", gui="bold", }, -- NvimTreeImageFile xxx gui=bold guifg=#af87af
    NvimTreeFolderIcon                     { fg="#8094b4", }, -- NvimTreeFolderIcon xxx guifg=#8094b4
    NvimTreeOpenedFolderIcon               { NvimTreeFolderIcon }, -- NvimTreeOpenedFolderIcon xxx links to NvimTreeFolderIcon
    NvimTreeClosedFolderIcon               { NvimTreeFolderIcon }, -- NvimTreeClosedFolderIcon xxx links to NvimTreeFolderIcon
    diffRemoved                            { fg="#d75f5f", }, -- diffRemoved    xxx ctermfg=167 guifg=#d75f5f
    GitSignsDelete                         { diffRemoved }, -- GitSignsDelete xxx links to diffRemoved
    diffAdded                              { fg="#87af87", }, -- diffAdded      xxx ctermfg=108 guifg=#87af87
    GitSignsAdd                            { diffAdded }, -- GitSignsAdd    xxx links to diffAdded
    NvimTreeWindowPicker                   { bg="#4493c8", gui="bold", fg="#ededed", }, -- NvimTreeWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
    lualine_c_normal                       { fg="#e0def4", bg="#191724", }, -- lualine_c_normal xxx guifg=#e0def4 guibg=#191724
    lualine_c_inactive                     { fg="#e0def4", bg="#191724", }, -- lualine_c_inactive xxx guifg=#e0def4 guibg=#191724
    lualine_c_2_normal                     { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_normal xxx guifg=#eb6f92 guibg=#191724
    lualine_c_2_insert                     { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_insert xxx guifg=#eb6f92 guibg=#191724
    lualine_c_2_visual                     { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_visual xxx guifg=#eb6f92 guibg=#191724
    lualine_c_2_replace                    { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_replace xxx guifg=#eb6f92 guibg=#191724
    lualine_c_2_command                    { fg="#c4a7e7", bg="#191724", }, -- lualine_c_2_command xxx guifg=#c4a7e7 guibg=#191724
    lualine_c_2_terminal                   { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_terminal xxx guifg=#eb6f92 guibg=#191724
    lualine_c_2_inactive                   { fg="#eb6f92", bg="#191724", }, -- lualine_c_2_inactive xxx guifg=#eb6f92 guibg=#191724
    lualine_c_filename_normal              { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_normal xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_insert              { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_insert xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_visual              { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_visual xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_replace             { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_replace xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_command             { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_command xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_terminal            { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_terminal xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_filename_inactive            { bg="#191724", gui="bold", fg="#c4a7e7", }, -- lualine_c_filename_inactive xxx gui=bold guifg=#c4a7e7 guibg=#191724
    lualine_c_branch_normal                { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_normal xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_insert                { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_insert xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_visual                { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_visual xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_replace               { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_replace xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_command               { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_command xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_terminal              { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_terminal xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_branch_inactive              { bg="#191724", gui="bold", fg="#ebbcba", }, -- lualine_c_branch_inactive xxx gui=bold guifg=#ebbcba guibg=#191724
    lualine_c_diff_added_normal            { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_normal xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_insert            { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_insert xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_visual            { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_visual xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_replace           { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_replace xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_command           { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_command xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_terminal          { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_terminal xxx guifg=#31748f guibg=#191724
    lualine_c_diff_added_inactive          { fg="#31748f", bg="#191724", }, -- lualine_c_diff_added_inactive xxx guifg=#31748f guibg=#191724
    lualine_c_diff_modified_normal         { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_normal xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_insert         { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_insert xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_visual         { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_visual xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_replace        { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_replace xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_command        { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_command xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_terminal       { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_terminal xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_modified_inactive       { fg="#f6c177", bg="#191724", }, -- lualine_c_diff_modified_inactive xxx guifg=#f6c177 guibg=#191724
    lualine_c_diff_removed_normal          { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_normal xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_insert          { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_insert xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_visual          { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_visual xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_replace         { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_replace xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_command         { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_command xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_terminal        { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_terminal xxx guifg=#eb6f92 guibg=#191724
    lualine_c_diff_removed_inactive        { fg="#eb6f92", bg="#191724", }, -- lualine_c_diff_removed_inactive xxx guifg=#eb6f92 guibg=#191724
    lualine_x_7_normal                     { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_normal xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_insert                     { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_insert xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_visual                     { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_visual xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_replace                    { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_replace xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_command                    { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_command xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_terminal                   { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_terminal xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_7_inactive                   { bg="#191724", gui="bold", fg="#9ccfd8", }, -- lualine_x_7_inactive xxx gui=bold guifg=#9ccfd8 guibg=#191724
    lualine_x_diagnostics_error_normal     { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_normal xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_insert     { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_insert xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_visual     { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_visual xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_replace    { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_replace xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_command    { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_command xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_terminal   { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_terminal xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_error_inactive   { fg="#ff0000", bg="#191724", }, -- lualine_x_diagnostics_error_inactive xxx guifg=#ff0000 guibg=#191724
    lualine_x_diagnostics_warn_normal      { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_normal xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_insert      { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_insert xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_visual      { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_visual xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_replace     { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_replace xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_command     { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_command xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_terminal    { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_terminal xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_warn_inactive    { fg="#ffa500", bg="#191724", }, -- lualine_x_diagnostics_warn_inactive xxx guifg=#ffa500 guibg=#191724
    lualine_x_diagnostics_info_normal      { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_normal xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_insert      { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_insert xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_visual      { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_visual xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_replace     { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_replace xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_command     { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_command xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_terminal    { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_terminal xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_info_inactive    { fg="#add8e6", bg="#191724", }, -- lualine_x_diagnostics_info_inactive xxx guifg=#add8e6 guibg=#191724
    lualine_x_diagnostics_hint_normal      { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_normal xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_insert      { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_insert xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_visual      { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_visual xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_replace     { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_replace xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_command     { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_command xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_terminal    { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_terminal xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_diagnostics_hint_inactive    { fg="#d3d3d3", bg="#191724", }, -- lualine_x_diagnostics_hint_inactive xxx guifg=#d3d3d3 guibg=#191724
    lualine_x_9_normal                     { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_normal xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_insert                     { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_insert xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_visual                     { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_visual xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_replace                    { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_replace xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_command                    { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_command xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_terminal                   { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_terminal xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_9_inactive                   { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_9_inactive xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_normal            { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_normal xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_insert            { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_insert xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_visual            { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_visual xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_replace           { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_replace xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_command           { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_command xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_terminal          { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_terminal xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_fileformat_inactive          { bg="#191724", gui="bold", fg="#31748f", }, -- lualine_x_fileformat_inactive xxx gui=bold guifg=#31748f guibg=#191724
    lualine_x_location_normal              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_normal xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_insert              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_insert xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_visual              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_visual xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_replace             { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_replace xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_command             { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_command xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_terminal            { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_terminal xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_location_inactive            { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_location_inactive xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_normal              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_normal xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_insert              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_insert xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_visual              { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_visual xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_replace             { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_replace xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_command             { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_command xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_terminal            { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_terminal xxx gui=bold guifg=#e0def4 guibg=#191724
    lualine_x_progress_inactive            { bg="#191724", gui="bold", fg="#e0def4", }, -- lualine_x_progress_inactive xxx gui=bold guifg=#e0def4 guibg=#191724
    NvimTreeExecFile                       { fg="#87af87", gui="bold", }, -- NvimTreeExecFile xxx gui=bold guifg=#87af87
    NvimTreeModifiedFile                   { fg="#87af87", }, -- NvimTreeModifiedFile xxx guifg=#87af87
    NvimTreeIndentMarker                   { fg="#8094b4", }, -- NvimTreeIndentMarker xxx guifg=#8094b4
    NvimTreeLiveFilterPrefix               { fg="#af87af", gui="bold", }, -- NvimTreeLiveFilterPrefix xxx gui=bold guifg=#af87af
    NvimTreeSymlink                        { fg="#5f8787", gui="bold", }, -- NvimTreeSymlink xxx gui=bold guifg=#5f8787
    NvimTreeBookmark                       { fg="#87af87", }, -- NvimTreeBookmark xxx guifg=#87af87
    NvimTreeLiveFilterValue                { gui="bold", }, -- NvimTreeLiveFilterValue xxx gui=bold
    DevIconDiff                            { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=239 guifg=#41535b
    DevIconElm                             { fg="#519aba", }, -- DevIconElm     xxx ctermfg=74 guifg=#519aba
    DevIconJl                              { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
    DevIconDockerfile                      { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
    DevIconXcPlayground                    { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
    DevIconSln                             { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
    DevIconTxt                             { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
    DevIconTcl                             { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
    DevIconR                               { fg="#358a5b", }, -- DevIconR       xxx ctermfg=29 guifg=#358a5b
    DevIconFsx                             { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=74 guifg=#519aba
    DevIconTex                             { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=22 guifg=#3d6117
    DevIconMakefile                        { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
    DevIconZshrc                           { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
    DevIconDocx                            { fg="#185abd", }, -- DevIconDocx    xxx ctermfg=26 guifg=#185abd
    DevIconWasm                            { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
    DevIconVala                            { fg="#7239b3", }, -- DevIconVala    xxx ctermfg=91 guifg=#7239b3
    DevIconScheme                          { fg="#000000", }, -- DevIconScheme  xxx ctermfg=16 guifg=#000000
    DevIconNPMrc                           { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
    DevIconGif                             { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
    DevIconMl                              { fg="#e37933", }, -- DevIconMl      xxx ctermfg=166 guifg=#e37933
    DevIconMarkdown                        { fg="#519aba", }, -- DevIconMarkdown xxx ctermfg=74 guifg=#519aba
    DevIconPp                              { fg="#ffa61a", }, -- DevIconPp      xxx guifg=#ffa61a
    DevIconCp                              { fg="#519aba", }, -- DevIconCp      xxx ctermfg=74 guifg=#519aba
    DevIconJson                            { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
    DevIconRmd                             { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=74 guifg=#519aba
    DevIconXlsx                            { fg="#207245", }, -- DevIconXlsx    xxx ctermfg=29 guifg=#207245
    DevIconGraphQL                         { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
    DevIconBashrc                          { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
    DevIconZsh                             { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
    DevIconZshprofile                      { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
    DevIconLog                             { fg="#ffffff", }, -- DevIconLog     xxx ctermfg=231 guifg=#ffffff
    DevIconVerilog                         { fg="#019833", }, -- DevIconVerilog xxx ctermfg=28 guifg=#019833
    DevIconLicense                         { fg="#cbcb41", }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
    DevIconConf                            { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
    DevIconJpg                             { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
    DevIconSpecJs                          { fg="#cbcb41", }, -- DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
    DevIconPpt                             { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=214 guifg=#cb4a32
    DevIconGitLogo                         { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
    DevIconSystemVerilog                   { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
    DevIconPyc                             { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=222 guifg=#ffe291
    DevIconCpp                             { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=74 guifg=#519aba
    DevIconWebpack                         { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=74 guifg=#519aba
    DevIconEpp                             { fg="#ffa61a", }, -- DevIconEpp     xxx guifg=#ffa61a
    DevIconGitConfig                       { fg="#41535b", }, -- DevIconGitConfig xxx ctermfg=239 guifg=#41535b
    DevIconProcfile                        { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
    DevIconTerraform                       { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
    DevIconDesktopEntry                    { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
    DevIconFsscript                        { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=74 guifg=#519aba
    DevIconSh                              { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
    DevIconEjs                             { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconHpp                             { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
    DevIconClojure                         { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=113 guifg=#8dc149
    DevIconLiquid                          { fg="#95bf47", }, -- DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
    DevIconErb                             { fg="#701516", }, -- DevIconErb     xxx ctermfg=214 guifg=#701516
    DevIconKotlinScript                    { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
    DevIconClojureDart                     { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=74 guifg=#519aba
    DevIconBrewfile                        { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
    DevIconEx                              { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
    DevIconSass                            { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
    DevIconMli                             { fg="#e37933", }, -- DevIconMli     xxx ctermfg=166 guifg=#e37933
    DevIconSvelte                          { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
    DevIconSql                             { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
    DevIconGitAttributes                   { fg="#41535b", }, -- DevIconGitAttributes xxx ctermfg=239 guifg=#41535b
    DevIconEex                             { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
    DevIconRakefile                        { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
    DevIconJava                            { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
    DevIconEdn                             { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=74 guifg=#519aba
    DevIconGruntfile                       { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=166 guifg=#e37933
    DevIconSvg                             { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
    DevIconXul                             { fg="#e37933", }, -- DevIconXul     xxx ctermfg=166 guifg=#e37933
    DevIconDart                            { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
    DevIconCMake                           { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
    DevIconBashProfile                     { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
    DevIconGitModules                      { fg="#41535b", }, -- DevIconGitModules xxx ctermfg=239 guifg=#41535b
    DevIconOrgMode                         { fg="#77aa99", }, -- DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
    DevIconZshenv                          { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
    DevIconHxx                             { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
    DevIconYaml                            { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
    DevIconCobol                           { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
    DevIconCPlusPlus                       { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
    DevIconLua                             { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
    DevIconKotlin                          { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
    DevIconSig                             { fg="#e37933", }, -- DevIconSig     xxx ctermfg=166 guifg=#e37933
    DevIconSettingsJson                    { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
    DevIconJpeg                            { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
    DevIconImportConfiguration             { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
    DevIconVimrc                           { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=28 guifg=#019833
    DevIconHtml                            { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=196 guifg=#e44d26
    DevIconJsx                             { fg="#20c2e3", }, -- DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
    DevIconGemfile                         { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
    DevIconZig                             { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=172 guifg=#f69a1b
    DevIconDoc                             { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=26 guifg=#185abd
    DevIconKsh                             { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
    DevIconJavaScriptReactSpec             { fg="#20c2e3", }, -- DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
    DevIconSpecTs                          { fg="#519aba", }, -- DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
    DevIconLess                            { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=54 guifg=#563d7c
    DevIconVHDL                            { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=28 guifg=#019833
    DevIconGemspec                         { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
    DevIconStyl                            { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=113 guifg=#8dc149
    DevIconBmp                             { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
    DevIconPsScriptfile                    { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
    DevIconLhs                             { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
    DevIconPsd                             { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=74 guifg=#519aba
    DevIconSlim                            { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=196 guifg=#e34c26
    DevIconScala                           { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
    DevIconTerminal                        { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=34 guifg=#31b53e
    DevIconPsManifestfile                  { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
    DevIconFavicon                         { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
    DevIconPrisma                          { fg="#ffffff", }, -- DevIconPrisma  xxx ctermfg=231 guifg=#ffffff
    DevIconVim                             { fg="#019833", }, -- DevIconVim     xxx ctermfg=28 guifg=#019833
    DevIconRlib                            { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=216 guifg=#dea584
    DevIconCoffee                          { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
    DevIconAi                              { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
    DevIconXls                             { fg="#207245", }, -- DevIconXls     xxx ctermfg=29 guifg=#207245
    DevIconEnv                             { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=227 guifg=#faf743
    DevIconSolidity                        { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=74 guifg=#519aba
    DevIconGvimrc                          { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=28 guifg=#019833
    DevIconPyd                             { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=222 guifg=#ffe291
    DevIconIni                             { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
    DevIconTwig                            { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=113 guifg=#8dc149
    DevIconPng                             { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
    DevIconFsharp                          { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=74 guifg=#519aba
    DevIconPsScriptModulefile              { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
    DevIconHaml                            { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
    DevIconNPMIgnore                       { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
    DevIconLock                            { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
    DevIconTextScene                       { fg="#a074c4", }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
    DevIconGulpfile                        { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
    DevIconLuau                            { fg="#51a0cf", }, -- DevIconLuau    xxx ctermfg=74 guifg=#51a0cf
    DevIconAwk                             { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
    DevIconGo                              { fg="#519aba", }, -- DevIconGo      xxx ctermfg=74 guifg=#519aba
    DevIconXml                             { fg="#e37933", }, -- DevIconXml     xxx ctermfg=166 guifg=#e37933
    DevIconNix                             { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
    DevIconTFVars                          { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
    DevIconLeex                            { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
    DevIconTs                              { fg="#519aba", }, -- DevIconTs      xxx ctermfg=74 guifg=#519aba
    DevIconRs                              { fg="#dea584", }, -- DevIconRs      xxx ctermfg=216 guifg=#dea584
    DevIconPhp                             { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
    DevIconHtm                             { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=196 guifg=#e34c26
    DevIconPm                              { fg="#519aba", }, -- DevIconPm      xxx ctermfg=74 guifg=#519aba
    DevIconsbt                             { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
    DevIconHeex                            { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
    DevIconToml                            { fg="#6d8086", }, -- DevIconToml    xxx ctermfg=66 guifg=#6d8086
    DevIconMustache                        { fg="#e37933", }, -- DevIconMustache xxx ctermfg=166 guifg=#e37933
    DevIconCson                            { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
    DevIconDsStore                         { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=239 guifg=#41535b
    DevIconScss                            { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
    DevIconMotoko                          { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
    DevIconMixLock                         { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
    DevIconDropbox                         { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
    DevIconMdx                             { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=74 guifg=#519aba
    DevIconSml                             { fg="#e37933", }, -- DevIconSml     xxx ctermfg=166 guifg=#e37933
    DevIconCMakeLists                      { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
    DevIconRss                             { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
    DevIconQuery                           { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=107 guifg=#90a850
    DevIconExs                             { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
    DevIconTor                             { fg="#519aba", }, -- DevIconTor     xxx ctermfg=74 guifg=#519aba
    DevIconBat                             { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=191 guifg=#c1f12e
    DevIconOPUS                            { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
    DevIconJs                              { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
    DevIconVue                             { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=113 guifg=#8dc149
    DevIconHs                              { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
    DevIconNodeModules                     { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
    DevIconNim                             { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
    DevIconBinaryGLTF                      { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
    DevIconRproj                           { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=29 guifg=#358a5b
    DevIconDump                            { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
    DevIconCss                             { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=75 guifg=#42a5f5
    DevIconPy                              { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=214 guifg=#ffbc03
    DevIconPsb                             { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=74 guifg=#519aba
    DevIconTextResource                    { fg="#cbcb41", }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
    DevIconSuo                             { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854cc7
    DevIconTestTs                          { fg="#519aba", }, -- DevIconTestTs  xxx ctermfg=74 guifg=#519aba
    DevIconConfigRu                        { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
    DevIconRake                            { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
    DevIconWebmanifest                     { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
    DevIconPackageLockJson                 { fg="#7a0d21", }, -- DevIconPackageLockJson xxx guifg=#7a0d21
    DevIconTypeScriptReactSpec             { fg="#1354bf", }, -- DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
    DevIconEslintrc                        { fg="#4b32c3", }, -- DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
    DevIconSwift                           { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=166 guifg=#e37933
    DevIconMaterial                        { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=163 guifg=#b83998
    DevIconFs                              { fg="#519aba", }, -- DevIconFs      xxx ctermfg=74 guifg=#519aba
    DevIconCs                              { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
    DevIconD                               { fg="#427819", }, -- DevIconD       xxx ctermfg=28 guifg=#427819
    DevIconVagrantfile                     { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
    DevIconMint                            { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
    DevIconTestJs                          { fg="#cbcb41", }, -- DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
    DevIconMjs                             { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=185 guifg=#f1e05a
    DevIconBash                            { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
    DevIconWebp                            { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
    DevIconYml                             { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
    DevIconDb                              { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
    DevIconGDScript                        { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
    DevIconGitIgnore                       { fg="#41535b", }, -- DevIconGitIgnore xxx ctermfg=239 guifg=#41535b
    DevIconDrools                          { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
    DevIconErl                             { fg="#b83998", }, -- DevIconErl     xxx ctermfg=163 guifg=#b83998
    DevIconH                               { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
    DevIconBabelrc                         { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
    DevIconHrl                             { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=163 guifg=#b83998
    DevIconPdf                             { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
    DevIconCxx                             { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=74 guifg=#519aba
    DevIconRb                              { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
    DevIconGitlabCI                        { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
    DevIconOpenTypeFont                    { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
    DevIconJson5                           { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
    DevIconProlog                          { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
    DevIconGodotProject                    { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
    DevIconConfiguration                   { fg="#ececec", }, -- DevIconConfiguration xxx ctermfg=255 guifg=#ececec
    DevIconGitCommit                       { fg="#41535b", }, -- DevIconGitCommit xxx ctermfg=239 guifg=#41535b
    DevIconHh                              { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
    DevIconCsv                             { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
    DevIconPyo                             { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=222 guifg=#ffe291
    DevIconIco                             { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
    DevIconMd                              { fg="#ffffff", }, -- DevIconMd      xxx ctermfg=231 guifg=#ffffff
    DevIconCsh                             { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
    DevIconFish                            { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
    DevIconJavaScriptReactTest             { fg="#20c2e3", }, -- DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
    DevIconClojureC                        { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=113 guifg=#8dc149
    DevIconFsi                             { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=74 guifg=#519aba
    DevIconPackageJson                     { fg="#e8274b", }, -- DevIconPackageJson xxx guifg=#e8274b
    DevIconClojureJS                       { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=74 guifg=#519aba
    DevIconTypeScriptReactTest             { fg="#1354bf", }, -- DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
    DevIconPackedResource                  { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
    DevIconC                               { fg="#599eff", }, -- DevIconC       xxx ctermfg=111 guifg=#599eff
    DevIconFennel                          { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
    DevIconHbs                             { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=202 guifg=#f0772b
    DevIconCrystal                         { fg="#c8c8c8", }, -- DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
    DevIconPl                              { fg="#519aba", }, -- DevIconPl      xxx ctermfg=74 guifg=#519aba
    DevIconTsx                             { fg="#1354bf", }, -- DevIconTsx     xxx ctermfg=26 guifg=#1354bf
    CmpItemAbbrDeprecatedDefault           { fg="#767676", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#767676
    CmpItemKindDefault                     { fg="#5f8787", }, -- CmpItemKindDefault xxx guifg=#5f8787
    GitSignsStagedAdd                      { fg="#435743", }, -- GitSignsStagedAdd xxx cterm= gui= guifg=#435743
    GitSignsStagedChange                   { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChange xxx cterm= gui= guifg=#000000 guibg=#afafaf
    GitSignsStagedDelete                   { fg="#6b2f2f", }, -- GitSignsStagedDelete xxx cterm= gui= guifg=#6b2f2f
    GitSignsStagedChangedelete             { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChangedelete xxx cterm= gui= guifg=#000000 guibg=#afafaf
    GitSignsStagedTopdelete                { fg="#6b2f2f", }, -- GitSignsStagedTopdelete xxx cterm= gui= guifg=#6b2f2f
    GitSignsStagedAddNr                    { fg="#435743", }, -- GitSignsStagedAddNr xxx cterm= gui= guifg=#435743
    GitSignsStagedChangeNr                 { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChangeNr xxx cterm= gui= guifg=#000000 guibg=#afafaf
    GitSignsStagedDeleteNr                 { fg="#6b2f2f", }, -- GitSignsStagedDeleteNr xxx cterm= gui= guifg=#6b2f2f
    GitSignsStagedChangedeleteNr           { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChangedeleteNr xxx cterm= gui= guifg=#000000 guibg=#afafaf
    GitSignsStagedTopdeleteNr              { fg="#6b2f2f", }, -- GitSignsStagedTopdeleteNr xxx cterm= gui= guifg=#6b2f2f
    GitSignsStagedAddLn                    { fg="#000000", bg="#87af87", }, -- GitSignsStagedAddLn xxx cterm= gui= guifg=#000000 guibg=#87af87
    GitSignsStagedChangeLn                 { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChangeLn xxx cterm= gui= guifg=#000000 guibg=#afafaf
    GitSignsStagedChangedeleteLn           { fg="#000000", bg="#afafaf", }, -- GitSignsStagedChangedeleteLn xxx cterm= gui= guifg=#000000 guibg=#afafaf
    ALEErrorSign                           { fg="#d75f5f", }, -- ALEErrorSign   xxx ctermfg=167 guifg=#d75f5f
    ALEInfoSign                            { fg="#d7d787", }, -- ALEInfoSign    xxx ctermfg=186 guifg=#d7d787
    ALEWarningSign                         { fg="#af87af", }, -- ALEWarningSign xxx ctermfg=139 guifg=#af87af
    ALEError                               { fg="#1c1c1c", bg="#d75f5f", }, -- ALEError       xxx ctermfg=234 ctermbg=167 guifg=#1c1c1c guibg=#d75f5f
    ALEVirtualTextError                    { fg="#1c1c1c", bg="#d75f5f", }, -- ALEVirtualTextError xxx ctermfg=234 ctermbg=167 guifg=#1c1c1c guibg=#d75f5f
    ALEWarning                             { fg="#1c1c1c", bg="#af87af", }, -- ALEWarning     xxx ctermfg=234 ctermbg=139 guifg=#1c1c1c guibg=#af87af
    ALEVirtualTextWarning                  { fg="#1c1c1c", bg="#af87af", }, -- ALEVirtualTextWarning xxx ctermfg=234 ctermbg=139 guifg=#1c1c1c guibg=#af87af
    ALEInfo                                { fg="#d7d787", }, -- ALEInfo        xxx ctermfg=186 guifg=#d7d787
    ALEVirtualTextInfo                     { fg="#d7d787", }, -- ALEVirtualTextInfo xxx ctermfg=186 guifg=#d7d787
    ToolbarButton                          { bg="#1c1c1c", gui="bold,reverse", fg="#9e9e9e", }, -- ToolbarButton  xxx cterm=bold,reverse ctermfg=247 ctermbg=234 gui=bold,reverse guifg=#9e9e9e guibg=#1c1c1c
    VisualNOS                              { fg="#1c1c1c", bg="#5f8787", }, -- VisualNOS      xxx ctermfg=234 ctermbg=66 guifg=#1c1c1c guibg=#5f8787
    debugPC                                { fg="#1c1c1c", bg="#5f87af", }, -- debugPC        xxx ctermfg=234 ctermbg=67 guifg=#1c1c1c guibg=#5f87af
    debugBreakpoint                        { fg="#1c1c1c", bg="#d7875f", }, -- debugBreakpoint xxx ctermfg=234 ctermbg=173 guifg=#1c1c1c guibg=#d7875f
    diffSubname                            { fg="#af87af", }, -- diffSubname    xxx ctermfg=139 guifg=#af87af
    colorizer_mb_585858                    { fg="white", bg="#585858", }, -- colorizer_mb_585858 xxx guifg=White guibg=#585858
    colorizer_mb_87afaf                    { fg="black", bg="#87afaf", }, -- colorizer_mb_87afaf xxx guifg=Black guibg=#87afaf
    colorizer_mb_1c1c1c                    { fg="white", bg="#1c1c1c", }, -- colorizer_mb_1c1c1c xxx guifg=White guibg=#1c1c1c
    colorizer_mb_d75f5f                    { fg="black", bg="#d75f5f", }, -- colorizer_mb_d75f5f xxx guifg=Black guibg=#d75f5f
    colorizer_mb_ffaf5f                    { fg="black", bg="#ffaf5f", }, -- colorizer_mb_ffaf5f xxx guifg=Black guibg=#ffaf5f
    colorizer_mb_87af87                    { fg="black", bg="#87af87", }, -- colorizer_mb_87af87 xxx guifg=Black guibg=#87af87
    colorizer_mb_afaf87                    { fg="black", bg="#afaf87", }, -- colorizer_mb_afaf87 xxx guifg=Black guibg=#afaf87
    colorizer_mb_d7d787                    { fg="black", bg="#d7d787", }, -- colorizer_mb_d7d787 xxx guifg=Black guibg=#d7d787
    colorizer_mb_9e9e9e                    { fg="black", bg="#9e9e9e", }, -- colorizer_mb_9e9e9e xxx guifg=Black guibg=#9e9e9e
    colorizer_mb_767676                    { fg="white", bg="#767676", }, -- colorizer_mb_767676 xxx guifg=White guibg=#767676
    colorizer_mb_d7875f                    { fg="black", bg="#d7875f", }, -- colorizer_mb_d7875f xxx guifg=Black guibg=#d7875f
    colorizer_mb_262626                    { fg="white", bg="#262626", }, -- colorizer_mb_262626 xxx guifg=White guibg=#262626
    colorizer_mb_000000                    { fg="white", bg="#000000", }, -- colorizer_mb_000000 xxx guifg=White guibg=#000000
    colorizer_mb_afafaf                    { fg="black", bg="#afafaf", }, -- colorizer_mb_afafaf xxx guifg=Black guibg=#afafaf
    colorizer_mb_af875f                    { fg="black", bg="#af875f", }, -- colorizer_mb_af875f xxx guifg=Black guibg=#af875f
    colorizer_mb_d7d7d7                    { fg="black", bg="#d7d7d7", }, -- colorizer_mb_d7d7d7 xxx guifg=Black guibg=#d7d7d7
    colorizer_mb_5f87af                    { fg="black", bg="#5f87af", }, -- colorizer_mb_5f87af xxx guifg=Black guibg=#5f87af
    colorizer_mb_d7afd7                    { fg="black", bg="#d7afd7", }, -- colorizer_mb_d7afd7 xxx guifg=Black guibg=#d7afd7
    colorizer_mb_303030                    { fg="white", bg="#303030", }, -- colorizer_mb_303030 xxx guifg=White guibg=#303030
    colorizer_mb_5fff00                    { fg="black", bg="#5fff00", }, -- colorizer_mb_5fff00 xxx guifg=Black guibg=#5fff00
    colorizer_mb_bcbcbc                    { fg="black", bg="#bcbcbc", }, -- colorizer_mb_bcbcbc xxx guifg=Black guibg=#bcbcbc
    colorizer_mb_ffff00                    { fg="black", bg="#ffff00", }, -- colorizer_mb_ffff00 xxx guifg=Black guibg=#ffff00
    colorizer_mb_008000                    { fg="white", bg="#008000", }, -- colorizer_mb_008000 xxx guifg=White guibg=#008000
    colorizer_mb_ff0000                    { fg="white", bg="#ff0000", }, -- colorizer_mb_ff0000 xxx guifg=White guibg=#ff0000
    colorizer_mb_afd7af                    { fg="black", bg="#afd7af", }, -- colorizer_mb_afd7af xxx guifg=Black guibg=#afd7af
    colorizer_mb_af87af                    { fg="black", bg="#af87af", }, -- colorizer_mb_af87af xxx guifg=Black guibg=#af87af
    colorizer_mb_87afd7                    { fg="black", bg="#87afd7", }, -- colorizer_mb_87afd7 xxx guifg=Black guibg=#87afd7
    colorizer_mb_5f8787                    { fg="white", bg="#5f8787", }, -- colorizer_mb_5f8787 xxx guifg=White guibg=#5f8787
    colorizer_mb_ffa500                    { fg="black", bg="#ffa500", }, -- colorizer_mb_ffa500 xxx guifg=Black guibg=#ffa500
    colorizer_mb_add8e6                    { fg="black", bg="#add8e6", }, -- colorizer_mb_add8e6 xxx guifg=Black guibg=#add8e6
    colorizer_mb_d3d3d3                    { fg="black", bg="#d3d3d3", }, -- colorizer_mb_d3d3d3 xxx guifg=Black guibg=#d3d3d3
    colorizer_mb_90ee90                    { fg="black", bg="#90ee90", }, -- colorizer_mb_90ee90 xxx guifg=Black guibg=#90ee90
    colorizer_mb_8094b4                    { fg="black", bg="#8094b4", }, -- colorizer_mb_8094b4 xxx guifg=Black guibg=#8094b4
    colorizer_mb_4493c8                    { fg="black", bg="#4493c8", }, -- colorizer_mb_4493c8 xxx guifg=Black guibg=#4493c8
    colorizer_mb_ededed                    { fg="black", bg="#ededed", }, -- colorizer_mb_ededed xxx guifg=Black guibg=#ededed
    colorizer_mb_e0def4                    { fg="black", bg="#e0def4", }, -- colorizer_mb_e0def4 xxx guifg=Black guibg=#e0def4
    colorizer_mb_191724                    { fg="white", bg="#191724", }, -- colorizer_mb_191724 xxx guifg=White guibg=#191724
    colorizer_mb_eb6f92                    { fg="black", bg="#eb6f92", }, -- colorizer_mb_eb6f92 xxx guifg=Black guibg=#eb6f92
    colorizer_mb_c4a7e7                    { fg="black", bg="#c4a7e7", }, -- colorizer_mb_c4a7e7 xxx guifg=Black guibg=#c4a7e7
    colorizer_mb_ebbcba                    { fg="black", bg="#ebbcba", }, -- colorizer_mb_ebbcba xxx guifg=Black guibg=#ebbcba
    colorizer_mb_31748f                    { fg="white", bg="#31748f", }, -- colorizer_mb_31748f xxx guifg=White guibg=#31748f
    colorizer_mb_f6c177                    { fg="black", bg="#f6c177", }, -- colorizer_mb_f6c177 xxx guifg=Black guibg=#f6c177
    colorizer_mb_9ccfd8                    { fg="black", bg="#9ccfd8", }, -- colorizer_mb_9ccfd8 xxx guifg=Black guibg=#9ccfd8
    colorizer_mb_41535b                    { fg="white", bg="#41535b", }, -- colorizer_mb_41535b xxx guifg=White guibg=#41535b
    colorizer_mb_519aba                    { fg="black", bg="#519aba", }, -- colorizer_mb_519aba xxx guifg=Black guibg=#519aba
    colorizer_mb_a270ba                    { fg="black", bg="#a270ba", }, -- colorizer_mb_a270ba xxx guifg=Black guibg=#a270ba
    colorizer_mb_458ee6                    { fg="black", bg="#458ee6", }, -- colorizer_mb_458ee6 xxx guifg=Black guibg=#458ee6
    colorizer_mb_e37933                    { fg="black", bg="#e37933", }, -- colorizer_mb_e37933 xxx guifg=Black guibg=#e37933
    colorizer_mb_854cc7                    { fg="white", bg="#854cc7", }, -- colorizer_mb_854cc7 xxx guifg=White guibg=#854cc7
    colorizer_mb_89e051                    { fg="black", bg="#89e051", }, -- colorizer_mb_89e051 xxx guifg=Black guibg=#89e051
    colorizer_mb_1e5cb3                    { fg="white", bg="#1e5cb3", }, -- colorizer_mb_1e5cb3 xxx guifg=White guibg=#1e5cb3
    colorizer_mb_358a5b                    { fg="white", bg="#358a5b", }, -- colorizer_mb_358a5b xxx guifg=White guibg=#358a5b
    colorizer_mb_3d6117                    { fg="white", bg="#3d6117", }, -- colorizer_mb_3d6117 xxx guifg=White guibg=#3d6117
    colorizer_mb_6d8086                    { fg="white", bg="#6d8086", }, -- colorizer_mb_6d8086 xxx guifg=White guibg=#6d8086
    colorizer_mb_185abd                    { fg="white", bg="#185abd", }, -- colorizer_mb_185abd xxx guifg=White guibg=#185abd
    colorizer_mb_5c4cdb                    { fg="white", bg="#5c4cdb", }, -- colorizer_mb_5c4cdb xxx guifg=White guibg=#5c4cdb
    colorizer_mb_7239b3                    { fg="white", bg="#7239b3", }, -- colorizer_mb_7239b3 xxx guifg=White guibg=#7239b3
    colorizer_mb_e8274b                    { fg="white", bg="#e8274b", }, -- colorizer_mb_e8274b xxx guifg=White guibg=#e8274b
    colorizer_mb_a074c4                    { fg="black", bg="#a074c4", }, -- colorizer_mb_a074c4 xxx guifg=Black guibg=#a074c4
    colorizer_mb_ffa61a                    { fg="black", bg="#ffa61a", }, -- colorizer_mb_ffa61a xxx guifg=Black guibg=#ffa61a
    colorizer_mb_cbcb41                    { fg="black", bg="#cbcb41", }, -- colorizer_mb_cbcb41 xxx guifg=Black guibg=#cbcb41
    colorizer_mb_207245                    { fg="white", bg="#207245", }, -- colorizer_mb_207245 xxx guifg=White guibg=#207245
    colorizer_mb_e535ab                    { fg="white", bg="#e535ab", }, -- colorizer_mb_e535ab xxx guifg=White guibg=#e535ab
    colorizer_mb_ffffff                    { fg="black", bg="#ffffff", }, -- colorizer_mb_ffffff xxx guifg=Black guibg=#ffffff
    colorizer_mb_019833                    { fg="white", bg="#019833", }, -- colorizer_mb_019833 xxx guifg=White guibg=#019833
    colorizer_mb_cb4a32                    { fg="white", bg="#cb4a32", }, -- colorizer_mb_cb4a32 xxx guifg=White guibg=#cb4a32
    colorizer_mb_f14c28                    { fg="white", bg="#f14c28", }, -- colorizer_mb_f14c28 xxx guifg=White guibg=#f14c28
    colorizer_mb_ffe291                    { fg="black", bg="#ffe291", }, -- colorizer_mb_ffe291 xxx guifg=Black guibg=#ffe291
    colorizer_mb_5f43e9                    { fg="white", bg="#5f43e9", }, -- colorizer_mb_5f43e9 xxx guifg=White guibg=#5f43e9
    colorizer_mb_563d7c                    { fg="white", bg="#563d7c", }, -- colorizer_mb_563d7c xxx guifg=White guibg=#563d7c
    colorizer_mb_4d5a5e                    { fg="white", bg="#4d5a5e", }, -- colorizer_mb_4d5a5e xxx guifg=White guibg=#4d5a5e
    colorizer_mb_8dc149                    { fg="black", bg="#8dc149", }, -- colorizer_mb_8dc149 xxx guifg=Black guibg=#8dc149
    colorizer_mb_95bf47                    { fg="black", bg="#95bf47", }, -- colorizer_mb_95bf47 xxx guifg=Black guibg=#95bf47
    colorizer_mb_701516                    { fg="white", bg="#701516", }, -- colorizer_mb_701516 xxx guifg=White guibg=#701516
    colorizer_mb_7f52ff                    { fg="white", bg="#7f52ff", }, -- colorizer_mb_7f52ff xxx guifg=White guibg=#7f52ff
    colorizer_mb_f55385                    { fg="black", bg="#f55385", }, -- colorizer_mb_f55385 xxx guifg=Black guibg=#f55385
    colorizer_mb_ff3e00                    { fg="white", bg="#ff3e00", }, -- colorizer_mb_ff3e00 xxx guifg=White guibg=#ff3e00
    colorizer_mb_dad8d8                    { fg="black", bg="#dad8d8", }, -- colorizer_mb_dad8d8 xxx guifg=Black guibg=#dad8d8
    colorizer_mb_cc3e44                    { fg="white", bg="#cc3e44", }, -- colorizer_mb_cc3e44 xxx guifg=White guibg=#cc3e44
    colorizer_mb_ffb13b                    { fg="black", bg="#ffb13b", }, -- colorizer_mb_ffb13b xxx guifg=Black guibg=#ffb13b
    colorizer_mb_03589c                    { fg="white", bg="#03589c", }, -- colorizer_mb_03589c xxx guifg=White guibg=#03589c
    colorizer_mb_77aa99                    { fg="black", bg="#77aa99", }, -- colorizer_mb_77aa99 xxx guifg=Black guibg=#77aa99
    colorizer_mb_005ca5                    { fg="white", bg="#005ca5", }, -- colorizer_mb_005ca5 xxx guifg=White guibg=#005ca5
    colorizer_mb_f34b7d                    { fg="black", bg="#f34b7d", }, -- colorizer_mb_f34b7d xxx guifg=Black guibg=#f34b7d
    colorizer_mb_51a0cf                    { fg="black", bg="#51a0cf", }, -- colorizer_mb_51a0cf xxx guifg=Black guibg=#51a0cf
    colorizer_mb_ececec                    { fg="black", bg="#ececec", }, -- colorizer_mb_ececec xxx guifg=Black guibg=#ececec
    colorizer_mb_e44d26                    { fg="white", bg="#e44d26", }, -- colorizer_mb_e44d26 xxx guifg=White guibg=#e44d26
    colorizer_mb_20c2e3                    { fg="black", bg="#20c2e3", }, -- colorizer_mb_20c2e3 xxx guifg=Black guibg=#20c2e3
    colorizer_mb_f69a1b                    { fg="black", bg="#f69a1b", }, -- colorizer_mb_f69a1b xxx guifg=Black guibg=#f69a1b
    colorizer_mb_4273ca                    { fg="white", bg="#4273ca", }, -- colorizer_mb_4273ca xxx guifg=White guibg=#4273ca
    colorizer_mb_e34c26                    { fg="white", bg="#e34c26", }, -- colorizer_mb_e34c26 xxx guifg=White guibg=#e34c26
    colorizer_mb_31b53e                    { fg="black", bg="#31b53e", }, -- colorizer_mb_31b53e xxx guifg=Black guibg=#31b53e
    colorizer_mb_6975c4                    { fg="white", bg="#6975c4", }, -- colorizer_mb_6975c4 xxx guifg=White guibg=#6975c4
    colorizer_mb_dea584                    { fg="black", bg="#dea584", }, -- colorizer_mb_dea584 xxx guifg=Black guibg=#dea584
    colorizer_mb_faf743                    { fg="black", bg="#faf743", }, -- colorizer_mb_faf743 xxx guifg=Black guibg=#faf743
    colorizer_mb_eaeae1                    { fg="black", bg="#eaeae1", }, -- colorizer_mb_eaeae1 xxx guifg=Black guibg=#eaeae1
    colorizer_mb_bbbbbb                    { fg="black", bg="#bbbbbb", }, -- colorizer_mb_bbbbbb xxx guifg=Black guibg=#bbbbbb
    colorizer_mb_7ebae4                    { fg="black", bg="#7ebae4", }, -- colorizer_mb_7ebae4 xxx guifg=Black guibg=#7ebae4
    colorizer_mb_9772fb                    { fg="black", bg="#9772fb", }, -- colorizer_mb_9772fb xxx guifg=Black guibg=#9772fb
    colorizer_mb_0061fe                    { fg="white", bg="#0061fe", }, -- colorizer_mb_0061fe xxx guifg=White guibg=#0061fe
    colorizer_mb_fb9d3b                    { fg="black", bg="#fb9d3b", }, -- colorizer_mb_fb9d3b xxx guifg=Black guibg=#fb9d3b
    colorizer_mb_90a850                    { fg="black", bg="#90a850", }, -- colorizer_mb_90a850 xxx guifg=Black guibg=#90a850
    colorizer_mb_c1f12e                    { fg="black", bg="#c1f12e", }, -- colorizer_mb_c1f12e xxx guifg=Black guibg=#c1f12e
    colorizer_mb_f88a02                    { fg="black", bg="#f88a02", }, -- colorizer_mb_f88a02 xxx guifg=Black guibg=#f88a02
    colorizer_mb_f3d400                    { fg="black", bg="#f3d400", }, -- colorizer_mb_f3d400 xxx guifg=Black guibg=#f3d400
    colorizer_mb_42a5f5                    { fg="black", bg="#42a5f5", }, -- colorizer_mb_42a5f5 xxx guifg=Black guibg=#42a5f5
    colorizer_mb_ffbc03                    { fg="black", bg="#ffbc03", }, -- colorizer_mb_ffbc03 xxx guifg=Black guibg=#ffbc03
    colorizer_mb_f1e05a                    { fg="black", bg="#f1e05a", }, -- colorizer_mb_f1e05a xxx guifg=Black guibg=#f1e05a
    colorizer_mb_7a0d21                    { fg="white", bg="#7a0d21", }, -- colorizer_mb_7a0d21 xxx guifg=White guibg=#7a0d21
    colorizer_mb_1354bf                    { fg="white", bg="#1354bf", }, -- colorizer_mb_1354bf xxx guifg=White guibg=#1354bf
    colorizer_mb_4b32c3                    { fg="white", bg="#4b32c3", }, -- colorizer_mb_4b32c3 xxx guifg=White guibg=#4b32c3
    colorizer_mb_b83998                    { fg="white", bg="#b83998", }, -- colorizer_mb_b83998 xxx guifg=White guibg=#b83998
    colorizer_mb_596706                    { fg="white", bg="#596706", }, -- colorizer_mb_596706 xxx guifg=White guibg=#596706
    colorizer_mb_427819                    { fg="white", bg="#427819", }, -- colorizer_mb_427819 xxx guifg=White guibg=#427819
    colorizer_mb_1563ff                    { fg="white", bg="#1563ff", }, -- colorizer_mb_1563ff xxx guifg=White guibg=#1563ff
    colorizer_mb_87c095                    { fg="black", bg="#87c095", }, -- colorizer_mb_87c095 xxx guifg=Black guibg=#87c095
    colorizer_mb_ffafaf                    { fg="black", bg="#ffafaf", }, -- colorizer_mb_ffafaf xxx guifg=Black guibg=#ffafaf
    colorizer_mb_b30b00                    { fg="white", bg="#b30b00", }, -- colorizer_mb_b30b00 xxx guifg=White guibg=#b30b00
    colorizer_mb_e24329                    { fg="white", bg="#e24329", }, -- colorizer_mb_e24329 xxx guifg=White guibg=#e24329
    colorizer_mb_e4b854                    { fg="black", bg="#e4b854", }, -- colorizer_mb_e4b854 xxx guifg=Black guibg=#e4b854
    colorizer_mb_599eff                    { fg="black", bg="#599eff", }, -- colorizer_mb_599eff xxx guifg=Black guibg=#599eff
    colorizer_mb_fff3d7                    { fg="black", bg="#fff3d7", }, -- colorizer_mb_fff3d7 xxx guifg=Black guibg=#fff3d7
    colorizer_mb_f0772b                    { fg="black", bg="#f0772b", }, -- colorizer_mb_f0772b xxx guifg=Black guibg=#f0772b
    colorizer_mb_c8c8c8                    { fg="black", bg="#c8c8c8", }, -- colorizer_mb_c8c8c8 xxx guifg=Black guibg=#c8c8c8
    colorizer_mb_435743                    { fg="white", bg="#435743", }, -- colorizer_mb_435743 xxx guifg=White guibg=#435743
    colorizer_mb_6b2f2f                    { fg="white", bg="#6b2f2f", }, -- colorizer_mb_6b2f2f xxx guifg=White guibg=#6b2f2f
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

---@diagnostic disable: undefined-global

local lush = require("lush")

local theme = lush(function(injected_functions)
    local sym = injected_functions.sym

    return {
        SpecialKey                                                { fg="#569cd6", }, -- SpecialKey     xxx guifg=#569cd6
        EndOfBuffer                                               { fg="#1e1e1e", }, -- EndOfBuffer    xxx guifg=#1e1e1e
        TermCursor                                                { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
        NonText                                                   { fg="#5a5a5a", }, -- NonText        xxx guifg=#5a5a5a
        LspInlayHint                                              { NonText }, -- LspInlayHint   xxx links to NonText
        TelescopeResultsDiffUntracked                             { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
        TelescopePromptCounter                                    { NonText }, -- TelescopePromptCounter xxx links to NonText
        TelescopePreviewHyphen                                    { NonText }, -- TelescopePreviewHyphen xxx links to NonText
        Directory                                                 { fg="#569cd6", bg="#1e1e1e", }, -- Directory      xxx guifg=#569cd6 guibg=#1e1e1e
        GitTitle                                                  { Directory }, -- GitTitle       xxx links to Directory
        TroubleFile                                               { Directory }, -- TroubleFile    xxx links to Directory
        NvimTreeSymlinkFolderName                                 { Directory }, -- NvimTreeSymlinkFolderName xxx links to Directory
        TelescopePreviewDate                                      { Directory }, -- TelescopePreviewDate xxx links to Directory
        TelescopePreviewDirectory                                 { Directory }, -- TelescopePreviewDirectory xxx links to Directory
        ErrorMsg                                                  { fg="#f44747", bg="#1e1e1e", }, -- ErrorMsg       xxx guifg=#f44747 guibg=#1e1e1e
        NvimInvalidSpacing                                        { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
        IncSearch                                                 { bg="#515c6a", }, -- IncSearch      xxx guibg=#515c6a
        Search                                                    { bg="#613315", }, -- Search         xxx guibg=#613315
        Substitute                                                { Search }, -- Substitute     xxx links to Search
        TroublePreview                                            { Search }, -- TroublePreview xxx links to Search
        TelescopePreviewMatch                                     { Search }, -- TelescopePreviewMatch xxx links to Search
        CurSearch                                                 { fg="nvimdarkgrey1", bg="nvimlightyellow", }, -- CurSearch      xxx ctermfg=0 ctermbg=11 guifg=NvimDarkGrey1 guibg=NvimLightYellow
        MoreMsg                                                   { fg="#d4d4d4", bg="#252526", }, -- MoreMsg        xxx guifg=#d4d4d4 guibg=#252526
        ModeMsg                                                   { fg="#d4d4d4", bg="#252526", }, -- ModeMsg        xxx guifg=#d4d4d4 guibg=#252526
        NvimTreeLiveFilterValue                                   { ModeMsg }, -- NvimTreeLiveFilterValue xxx links to ModeMsg
        LineNr                                                    { fg="#5a5a5a", bg="#1e1e1e", }, -- LineNr         xxx guifg=#5a5a5a guibg=#1e1e1e
        LineNrAbove                                               { LineNr }, -- LineNrAbove    xxx links to LineNr
        LineNrBelow                                               { LineNr }, -- LineNrBelow    xxx links to LineNr
        TroubleLocation                                           { LineNr }, -- TroubleLocation xxx links to LineNr
        TroubleIndent                                             { LineNr }, -- TroubleIndent  xxx links to LineNr
        NvimTreeLineNr                                            { LineNr }, -- NvimTreeLineNr xxx links to LineNr
        TelescopeResultsLineNr                                    { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
        CursorLineNr                                              { fg="#bbbbbb", bg="#1e1e1e", }, -- CursorLineNr   xxx guifg=#bbbbbb guibg=#1e1e1e
        TroubleFoldIcon                                           { CursorLineNr }, -- TroubleFoldIcon xxx links to CursorLineNr
        NvimTreeCursorLineNr                                      { CursorLineNr }, -- NvimTreeCursorLineNr xxx links to CursorLineNr
        Question                                                  { fg="#569cd6", bg="#1e1e1e", }, -- Question       xxx guifg=#569cd6 guibg=#1e1e1e
        StatusLine                                                { fg="#d4d4d4", bg="#373737", }, -- StatusLine     xxx guifg=#d4d4d4 guibg=#373737
        MsgSeparator                                              { StatusLine }, -- MsgSeparator   xxx links to StatusLine
        NvimTreeStatusLine                                        { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
        StatusLineNC                                              { fg="#d4d4d4", bg="#252526", }, -- StatusLineNC   xxx guifg=#d4d4d4 guibg=#252526
        NvimTreeStatusLineNC                                      { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
        VertSplit                                                 { fg="#444444", bg="#1e1e1e", }, -- VertSplit      xxx guifg=#444444 guibg=#1e1e1e
        WinSeparator                                              { VertSplit }, -- WinSeparator   xxx links to VertSplit
        Title                                                     { gui="bold", }, -- Title          xxx cterm=bold gui=bold
        FloatTitle                                                { Title }, -- FloatTitle     xxx links to Title
        TSTitle                                                   { Title }, -- TSTitle        xxx links to Title
        LspInfoTitle                                              { Title }, -- LspInfoTitle   xxx links to Title
        Visual                                                    { bg="#264f78", }, -- Visual         xxx guibg=#264f78
        SnippetTabstop                                            { Visual }, -- SnippetTabstop xxx links to Visual
        TSPlaygroundFocus                                         { Visual }, -- TSPlaygroundFocus xxx links to Visual
        TelescopePreviewLine                                      { Visual }, -- TelescopePreviewLine xxx links to Visual
        WarningMsg                                                { fg="#f44747", gui="bold", bg="#1e1e1e", }, -- WarningMsg     xxx cterm=bold gui=bold guifg=#f44747 guibg=#1e1e1e
        TSDanger                                                  { WarningMsg }, -- TSDanger       xxx links to WarningMsg
        WildMenu                                                  { bg="#264f78", }, -- WildMenu       xxx guibg=#264f78
        Folded                                                    { bg="#202d39", }, -- Folded         xxx guibg=#202d39
        FoldColumn                                                { fg="#5a5a5a", bg="#1e1e1e", }, -- FoldColumn     xxx guifg=#5a5a5a guibg=#1e1e1e
        CursorLineFold                                            { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
        DiffAdd                                                   { bg="#4b5632", }, -- DiffAdd        xxx guibg=#4b5632
        sym"@diff.plus"                                           { DiffAdd }, -- @diff.plus     xxx links to DiffAdd
        diffAdded                                                 { DiffAdd }, -- diffAdded      xxx links to DiffAdd
        TelescopeResultsDiffAdd                                   { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
        DiffChange                                                { bg="#4b1818", }, -- DiffChange     xxx guibg=#4b1818
        sym"@diff.delta"                                          { DiffChange }, -- @diff.delta    xxx links to DiffChange
        diffChanged                                               { DiffChange }, -- diffChanged    xxx links to DiffChange
        TelescopeResultsDiffChange                                { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
        DiffDelete                                                { bg="#6f1313", }, -- DiffDelete     xxx guibg=#6f1313
        sym"@diff.minus"                                          { DiffDelete }, -- @diff.minus    xxx links to DiffDelete
        diffRemoved                                               { DiffDelete }, -- diffRemoved    xxx links to DiffDelete
        TelescopeResultsDiffDelete                                { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
        DiffText                                                  { bg="#6f1313", }, -- DiffText       xxx guibg=#6f1313
        SignColumn                                                { bg="#1e1e1e", }, -- SignColumn     xxx guibg=#1e1e1e
        CursorLineSign                                            { SignColumn }, -- CursorLineSign xxx links to SignColumn
        Conceal                                                   { fg="#d4d4d4", bg="#1e1e1e", }, -- Conceal        xxx guifg=#d4d4d4 guibg=#1e1e1e
        SpellBad                                                  { fg="#f44747", gui="undercurl", sp="#f44747", bg="#1e1e1e", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guifg=#f44747 guibg=#1e1e1e guisp=#f44747
        NvimTreeCutHL                                             { SpellBad }, -- NvimTreeCutHL  xxx links to SpellBad
        SpellCap                                                  { fg="#f44747", gui="undercurl", sp="#f44747", bg="#1e1e1e", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guifg=#f44747 guibg=#1e1e1e guisp=#f44747
        NvimTreeExecFile                                          { SpellCap }, -- NvimTreeExecFile xxx links to SpellCap
        NvimTreeSymlink                                           { SpellCap }, -- NvimTreeSymlink xxx links to SpellCap
        SpellRare                                                 { fg="#f44747", gui="undercurl", sp="#f44747", bg="#1e1e1e", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guifg=#f44747 guibg=#1e1e1e guisp=#f44747
        NvimTreeCopiedHL                                          { SpellRare }, -- NvimTreeCopiedHL xxx links to SpellRare
        SpellLocal                                                { fg="#f44747", gui="undercurl", sp="#f44747", bg="#1e1e1e", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guifg=#f44747 guibg=#1e1e1e guisp=#f44747
        NvimTreeBookmarkHL                                        { SpellLocal }, -- NvimTreeBookmarkHL xxx links to SpellLocal
        Pmenu                                                     { fg="#bbbbbb", bg="#272727", }, -- Pmenu          xxx guifg=#bbbbbb guibg=#272727
        PmenuKind                                                 { Pmenu }, -- PmenuKind      xxx links to Pmenu
        PmenuExtra                                                { Pmenu }, -- PmenuExtra     xxx links to Pmenu
        CompeDocumentation                                        { Pmenu }, -- CompeDocumentation xxx links to Pmenu
        CompeDocumentationBorder                                  { Pmenu }, -- CompeDocumentationBorder xxx links to Pmenu
        CmpItemKind                                               { Pmenu }, -- CmpItemKind    xxx links to Pmenu
        PmenuSel                                                  { fg="#bbbbbb", bg="#004b72", }, -- PmenuSel       xxx guifg=#bbbbbb guibg=#004b72
        PmenuKindSel                                              { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
        PmenuExtraSel                                             { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
        PmenuSbar                                                 { bg="#343b41", }, -- PmenuSbar      xxx guibg=#343b41
        PmenuThumb                                                { bg="#bbbbbb", }, -- PmenuThumb     xxx guibg=#bbbbbb
        TabLine                                                   { fg="#d4d4d4", bg="#2d2d2d", }, -- TabLine        xxx guifg=#d4d4d4 guibg=#2d2d2d
        TabLineSel                                                { fg="#d4d4d4", bg="#1e1e1e", }, -- TabLineSel     xxx guifg=#d4d4d4 guibg=#1e1e1e
        TroubleCount                                              { TabLineSel }, -- TroubleCount   xxx links to TabLineSel
        TabLineFill                                               { fg="#d4d4d4", bg="#252526", }, -- TabLineFill    xxx guifg=#d4d4d4 guibg=#252526
        CursorColumn                                              { bg="#222222", }, -- CursorColumn   xxx guibg=#222222
        NvimTreeCursorColumn                                      { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
        CursorLine                                                { bg="#222222", }, -- CursorLine     xxx guibg=#222222
        ColorColumn                                               { bg="#222222", }, -- ColorColumn    xxx guibg=#222222
        QuickFixLine                                              { fg="nvimlightcyan", }, -- QuickFixLine   xxx ctermfg=14 guifg=NvimLightCyan
        Whitespace                                                { fg="#5a5a5a", }, -- Whitespace     xxx guifg=#5a5a5a
        NormalFloat                                               { bg="#272727", }, -- NormalFloat    xxx guibg=#272727
        FloatBorder                                               { NormalFloat }, -- FloatBorder    xxx links to NormalFloat
        NvimTreeNormalFloat                                       { NormalFloat }, -- NvimTreeNormalFloat xxx links to NormalFloat
        WinBar                                                    { fg="#d4d4d4", gui="bold", bg="#1e1e1e", }, -- WinBar         xxx cterm=bold gui=bold guifg=#d4d4d4 guibg=#1e1e1e
        WinBarNC                                                  { fg="#d4d4d4", bg="#1e1e1e", }, -- WinBarNC       xxx guifg=#d4d4d4 guibg=#1e1e1e
        Cursor                                                    { fg="#51504f", bg="#aeafad", }, -- Cursor         xxx guifg=#51504f guibg=#aeafad
        CursorIM                                                  { Cursor }, -- CursorIM       xxx links to Cursor
        RedrawDebugNormal                                         { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
        Underlined                                                { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
        sym"@string.special.url"                                  { Underlined }, -- @string.special.url xxx links to Underlined
        sym"@markup.link"                                         { Underlined }, -- @markup.link   xxx links to Underlined
        TSURI                                                     { Underlined }, -- TSURI          xxx links to Underlined
        lCursor                                                   { fg="bg", bg="fg", }, -- lCursor        xxx guifg=bg guibg=fg
        VisualNOS                                                 { bg="#264f78", }, -- VisualNOS      xxx guibg=#264f78
        Normal                                                    { fg="#d4d4d4", bg="#1e1e1e", }, -- Normal         xxx guifg=#d4d4d4 guibg=#1e1e1e
        NvimSpacing                                               { Normal }, -- NvimSpacing    xxx links to Normal
        TroubleText                                               { Normal }, -- TroubleText    xxx links to Normal
        TroubleNormal                                             { Normal }, -- TroubleNormal  xxx links to Normal
        NvimTreePopup                                             { Normal }, -- NvimTreePopup  xxx links to Normal
        Character                                                 { fg="#ce9178", }, -- Character      xxx guifg=#ce9178
        TSCharacter                                               { Character }, -- TSCharacter    xxx links to Character
        Constant                                                  { fg="#569cd6", }, -- Constant       xxx guifg=#569cd6
        TSTextReference                                           { Constant }, -- TSTextReference xxx links to Constant
        TSConstant                                                { Constant }, -- TSConstant     xxx links to Constant
        TelescopeResultsConstant                                  { Constant }, -- TelescopeResultsConstant xxx links to Constant
        TelescopePreviewUser                                      { Constant }, -- TelescopePreviewUser xxx links to Constant
        TelescopePreviewRead                                      { Constant }, -- TelescopePreviewRead xxx links to Constant
        TelescopePreviewGroup                                     { Constant }, -- TelescopePreviewGroup xxx links to Constant
        TelescopePreviewPipe                                      { Constant }, -- TelescopePreviewPipe xxx links to Constant
        TelescopePreviewCharDev                                   { Constant }, -- TelescopePreviewCharDev xxx links to Constant
        TelescopePreviewBlock                                     { Constant }, -- TelescopePreviewBlock xxx links to Constant
        Number                                                    { fg="#b5cea8", }, -- Number         xxx guifg=#b5cea8
        NvimNumber                                                { Number }, -- NvimNumber     xxx links to Number
        TSNumber                                                  { Number }, -- TSNumber       xxx links to Number
        TelescopeResultsNumber                                    { Number }, -- TelescopeResultsNumber xxx links to Number
        Boolean                                                   { fg="#569cd6", }, -- Boolean        xxx guifg=#569cd6
        TSBoolean                                                 { Boolean }, -- TSBoolean      xxx links to Boolean
        Float                                                     { fg="#b5cea8", }, -- Float          xxx guifg=#b5cea8
        TSFloat                                                   { Float }, -- TSFloat        xxx links to Float
        Conditional                                               { fg="#c586c0", }, -- Conditional    xxx guifg=#c586c0
        TSConditional                                             { Conditional }, -- TSConditional  xxx links to Conditional
        Statement                                                 { fg="#c586c0", }, -- Statement      xxx guifg=#c586c0
        TelescopePreviewSocket                                    { Statement }, -- TelescopePreviewSocket xxx links to Statement
        TelescopePreviewWrite                                     { Statement }, -- TelescopePreviewWrite xxx links to Statement
        Repeat                                                    { fg="#c586c0", }, -- Repeat         xxx guifg=#c586c0
        TSRepeat                                                  { Repeat }, -- TSRepeat       xxx links to Repeat
        Label                                                     { fg="#c586c0", }, -- Label          xxx guifg=#c586c0
        TSLabel                                                   { Label }, -- TSLabel        xxx links to Label
        TSTag                                                     { Label }, -- TSTag          xxx links to Label
        Keyword                                                   { fg="#c586c0", }, -- Keyword        xxx guifg=#c586c0
        TSKeywordFunction                                         { Keyword }, -- TSKeywordFunction xxx links to Keyword
        TSKeyword                                                 { Keyword }, -- TSKeyword      xxx links to Keyword
        asciidocBackslash                                         { Keyword }, -- asciidocBackslash xxx links to Keyword
        GitCount                                                  { Keyword }, -- GitCount       xxx links to Keyword
        TelescopePreviewSticky                                    { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
        Exception                                                 { fg="#c586c0", }, -- Exception      xxx guifg=#c586c0
        TSException                                               { Exception }, -- TSException    xxx links to Exception
        Include                                                   { fg="#c586c0", }, -- Include        xxx guifg=#c586c0
        TSNamespace                                               { Include }, -- TSNamespace    xxx links to Include
        TSInclude                                                 { Include }, -- TSInclude      xxx links to Include
        PreProc                                                   { fg="#c586c0", }, -- PreProc        xxx guifg=#c586c0
        PreCondit                                                 { PreProc }, -- PreCondit      xxx links to PreProc
        TSAnnotation                                              { PreProc }, -- TSAnnotation   xxx links to PreProc
        TSAttribute                                               { PreProc }, -- TSAttribute    xxx links to PreProc
        TSPreProc                                                 { PreProc }, -- TSPreProc      xxx links to PreProc
        NvimTreeLiveFilterPrefix                                  { PreProc }, -- NvimTreeLiveFilterPrefix xxx links to PreProc
        Define                                                    { fg="#c586c0", }, -- Define         xxx guifg=#c586c0
        TSDefine                                                  { Define }, -- TSDefine       xxx links to Define
        TSConstMacro                                              { Define }, -- TSConstMacro   xxx links to Define
        Macro                                                     { fg="#c586c0", }, -- Macro          xxx guifg=#c586c0
        TSFuncMacro                                               { Macro }, -- TSFuncMacro    xxx links to Macro
        TSEnvironment                                             { Macro }, -- TSEnvironment  xxx links to Macro
        StorageClass                                              { fg="#569cd6", }, -- StorageClass   xxx guifg=#569cd6
        TSStorageClass                                            { StorageClass }, -- TSStorageClass xxx links to StorageClass
        Type                                                      { fg="#569cd6", }, -- Type           xxx guifg=#569cd6
        NvimNumberPrefix                                          { Type }, -- NvimNumberPrefix xxx links to Type
        NvimOptionSigil                                           { Type }, -- NvimOptionSigil xxx links to Type
        TSTypeQualifier                                           { Type }, -- TSTypeQualifier xxx links to Type
        TSTypeBuiltin                                             { Type }, -- TSTypeBuiltin  xxx links to Type
        TSEnvironmentName                                         { Type }, -- TSEnvironmentName xxx links to Type
        TSType                                                    { Type }, -- TSType         xxx links to Type
        NvimTreeModifiedIcon                                      { Type }, -- NvimTreeModifiedIcon xxx links to Type
        LspInfoFiletype                                           { Type }, -- LspInfoFiletype xxx links to Type
        Structure                                                 { fg="#4ec9b0", }, -- Structure      xxx guifg=#4ec9b0
        Typedef                                                   { fg="#569cd6", }, -- Typedef        xxx guifg=#569cd6
        TSTypeDefinition                                          { Typedef }, -- TSTypeDefinition xxx links to Typedef
        Tag                                                       { fg="#d4d4d4", }, -- Tag            xxx guifg=#d4d4d4
        Special                                                   { fg="#d7ba7d", }, -- Special        xxx guifg=#d7ba7d
        sym"@module.builtin"                                      { Special }, -- @module.builtin xxx links to Special
        sym"@markup"                                              { Special }, -- @markup        xxx links to Special
        TSMath                                                    { Special }, -- TSMath         xxx links to Special
        TSVariableBuiltin                                         { Special }, -- TSVariableBuiltin xxx links to Special
        TSFuncBuiltin                                             { Special }, -- TSFuncBuiltin  xxx links to Special
        TSConstructor                                             { Special }, -- TSConstructor  xxx links to Special
        TSConstBuiltin                                            { Special }, -- TSConstBuiltin xxx links to Special
        NvimTreeOpenedHL                                          { Special }, -- NvimTreeOpenedHL xxx links to Special
        DressingSelectIdx                                         { Special }, -- DressingSelectIdx xxx links to Special
        TelescopePreviewLink                                      { Special }, -- TelescopePreviewLink xxx links to Special
        SpecialChar                                               { fg="#d4d4d4", }, -- SpecialChar    xxx guifg=#d4d4d4
        NvimRegister                                              { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
        NvimStringSpecial                                         { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
        TSCharacterSpecial                                        { SpecialChar }, -- TSCharacterSpecial xxx links to SpecialChar
        TSStringSpecial                                           { SpecialChar }, -- TSStringSpecial xxx links to SpecialChar
        TSStringEscape                                            { SpecialChar }, -- TSStringEscape xxx links to SpecialChar
        TelescopeResultsVariable                                  { SpecialChar }, -- TelescopeResultsVariable xxx links to SpecialChar
        SpecialComment                                            { fg="#6a9955", }, -- SpecialComment xxx guifg=#6a9955
        TSNote                                                    { SpecialComment }, -- TSNote         xxx links to SpecialComment
        TelescopeResultsSpecialComment                            { SpecialComment }, -- TelescopeResultsSpecialComment xxx links to SpecialComment
        Debug                                                     { fg="#d4d4d4", }, -- Debug          xxx guifg=#d4d4d4
        TSDebug                                                   { Debug }, -- TSDebug        xxx links to Debug
        Ignore                                                    { fg="#d4d4d4", }, -- Ignore         xxx guifg=#d4d4d4
        DiagnosticError                                           { fg="#f44747", }, -- DiagnosticError xxx guifg=#f44747
        DiagnosticFloatingError                                   { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
        DiagnosticVirtualTextError                                { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
        DiagnosticSignError                                       { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
        TroubleError                                              { DiagnosticError }, -- TroubleError   xxx links to DiagnosticError
        NvimTreeDiagnosticErrorIcon                               { DiagnosticError }, -- NvimTreeDiagnosticErrorIcon xxx links to DiagnosticError
        DiagnosticWarn                                            { fg="#dcdcaa", }, -- DiagnosticWarn xxx guifg=#dcdcaa
        DiagnosticFloatingWarn                                    { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
        DiagnosticVirtualTextWarn                                 { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
        DiagnosticSignWarn                                        { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
        TroubleWarning                                            { DiagnosticWarn }, -- TroubleWarning xxx links to DiagnosticWarn
        NvimTreeDiagnosticWarnIcon                                { DiagnosticWarn }, -- NvimTreeDiagnosticWarnIcon xxx links to DiagnosticWarn
        DiagnosticInfo                                            { fg="#569cd6", }, -- DiagnosticInfo xxx guifg=#569cd6
        DiagnosticFloatingInfo                                    { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
        DiagnosticVirtualTextInfo                                 { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
        DiagnosticSignInfo                                        { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
        TroubleInformation                                        { DiagnosticInfo }, -- TroubleInformation xxx links to DiagnosticInfo
        NvimTreeDiagnosticInfoIcon                                { DiagnosticInfo }, -- NvimTreeDiagnosticInfoIcon xxx links to DiagnosticInfo
        DiagnosticHint                                            { fg="#569cd6", }, -- DiagnosticHint xxx guifg=#569cd6
        DiagnosticFloatingHint                                    { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
        DiagnosticVirtualTextHint                                 { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
        DiagnosticSignHint                                        { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
        TroubleHint                                               { DiagnosticHint }, -- TroubleHint    xxx links to DiagnosticHint
        NvimTreeDiagnosticHintIcon                                { DiagnosticHint }, -- NvimTreeDiagnosticHintIcon xxx links to DiagnosticHint
        DiagnosticOk                                              { fg="#4ec9b0", }, -- DiagnosticOk   xxx guifg=#4ec9b0
        DiagnosticFloatingOk                                      { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
        DiagnosticVirtualTextOk                                   { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
        DiagnosticSignOk                                          { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
        Comment                                                   { fg="#6a9955", }, -- Comment        xxx guifg=#6a9955
        DiagnosticUnnecessary                                     { Comment }, -- DiagnosticUnnecessary xxx links to Comment
        TSComment                                                 { Comment }, -- TSComment      xxx links to Comment
        TroubleCode                                               { Comment }, -- TroubleCode    xxx links to Comment
        TroubleSource                                             { Comment }, -- TroubleSource  xxx links to Comment
        LspInfoTip                                                { Comment }, -- LspInfoTip     xxx links to Comment
        TelescopeResultsComment                                   { Comment }, -- TelescopeResultsComment xxx links to Comment
        sym"@variable"                                            { fg="#9cdcfe", }, -- @variable      xxx guifg=#9cdcfe
        sym"@lsp.type.variable"                                   { sym"@variable" }, -- @lsp.type.variable xxx links to @variable
        sym"@variable.builtin"                                    { fg="#9cdcfe", }, -- @variable.builtin xxx guifg=#9cdcfe
        sym"@constant"                                            { fg="#4fc1fe", }, -- @constant      xxx guifg=#4fc1fe
        sym"@lsp.type.enumMember"                                 { sym"@constant" }, -- @lsp.type.enumMember xxx links to @constant
        sym"@lsp.type.macro"                                      { sym"@constant" }, -- @lsp.type.macro xxx links to @constant
        CmpItemKindEvent                                          { sym"@constant" }, -- CmpItemKindEvent xxx links to @constant
        CmpItemKindConstant                                       { sym"@constant" }, -- CmpItemKindConstant xxx links to @constant
        sym"@constant.builtin"                                    { fg="#569cd6", }, -- @constant.builtin xxx guifg=#569cd6
        sym"@module"                                              { fg="#4ec9b0", }, -- @module        xxx guifg=#4ec9b0
        sym"@lsp.type.namespace"                                  { sym"@module" }, -- @lsp.type.namespace xxx links to @module
        sym"@namespace"                                           { sym"@module" }, -- @namespace     xxx links to @module
        sym"@label"                                               { fg="#9cdcfe", }, -- @label         xxx guifg=#9cdcfe
        sym"@string"                                              { fg="#ce9178", }, -- @string        xxx guifg=#ce9178
        String                                                    { fg="#ce9178", }, -- String         xxx guifg=#ce9178
        NvimString                                                { String }, -- NvimString     xxx links to String
        TSLiteral                                                 { String }, -- TSLiteral      xxx links to String
        TSString                                                  { String }, -- TSString       xxx links to String
        TSStringRegex                                             { String }, -- TSStringRegex  xxx links to String
        TSPlaygroundLang                                          { String }, -- TSPlaygroundLang xxx links to String
        TelescopePreviewSize                                      { String }, -- TelescopePreviewSize xxx links to String
        TelescopePreviewExecute                                   { String }, -- TelescopePreviewExecute xxx links to String
        sym"@string.regexp"                                       { fg="#ce9178", }, -- @string.regexp xxx guifg=#ce9178
        sym"@string.regex"                                        { sym"@string.regexp" }, -- @string.regex  xxx links to @string.regexp
        sym"@character"                                           { fg="#ce9178", }, -- @character     xxx guifg=#ce9178
        sym"@boolean"                                             { fg="#569cd6", }, -- @boolean       xxx guifg=#569cd6
        sym"@number"                                              { fg="#b5cea8", }, -- @number        xxx guifg=#b5cea8
        sym"@number.float"                                        { fg="#b5cea8", }, -- @number.float  xxx guifg=#b5cea8
        sym"@float"                                               { sym"@number.float" }, -- @float         xxx links to @number.float
        sym"@type"                                                { fg="#4ec9b0", }, -- @type          xxx guifg=#4ec9b0
        sym"@lsp.type.class"                                      { sym"@type" }, -- @lsp.type.class xxx links to @type
        sym"@lsp.type.enum"                                       { sym"@type" }, -- @lsp.type.enum xxx links to @type
        sym"@lsp.type.interface"                                  { sym"@type" }, -- @lsp.type.interface xxx links to @type
        sym"@lsp.type.struct"                                     { sym"@type" }, -- @lsp.type.struct xxx links to @type
        sym"@lsp.type.type"                                       { sym"@type" }, -- @lsp.type.type xxx links to @type
        sym"@lsp.type.typeParameter"                              { sym"@type" }, -- @lsp.type.typeParameter xxx links to @type
        sym"@type.builtin"                                        { fg="#569cd6", }, -- @type.builtin  xxx guifg=#569cd6
        sym"@lsp.typemod.type.defaultLibrary"                     { sym"@type.builtin" }, -- @lsp.typemod.type.defaultLibrary xxx links to @type.builtin
        sym"@attribute"                                           { fg="#dcdcaa", }, -- @attribute     xxx guifg=#dcdcaa
        sym"@lsp.type.decorator"                                  { sym"@attribute" }, -- @lsp.type.decorator xxx links to @attribute
        sym"@property"                                            { fg="#9cdcfe", }, -- @property      xxx guifg=#9cdcfe
        sym"@lsp.type.property"                                   { sym"@property" }, -- @lsp.type.property xxx links to @property
        Identifier                                                { fg="#9cdcfe", }, -- Identifier     xxx guifg=#9cdcfe
        NvimIdentifier                                            { Identifier }, -- NvimIdentifier xxx links to Identifier
        TSProperty                                                { Identifier }, -- TSProperty     xxx links to Identifier
        TSParameter                                               { Identifier }, -- TSParameter    xxx links to Identifier
        TSSymbol                                                  { Identifier }, -- TSSymbol       xxx links to Identifier
        TSField                                                   { Identifier }, -- TSField        xxx links to Identifier
        sym"@event"                                               { Identifier }, -- @event         xxx links to Identifier
        sym"@interface"                                           { Identifier }, -- @interface     xxx links to Identifier
        sym"@modifier"                                            { Identifier }, -- @modifier      xxx links to Identifier
        sym"@decorator"                                           { Identifier }, -- @decorator     xxx links to Identifier
        TelescopeResultsIdentifier                                { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
        TelescopeMultiIcon                                        { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
        sym"@function"                                            { fg="#dcdcaa", }, -- @function      xxx guifg=#dcdcaa
        sym"@lsp.type.function"                                   { sym"@function" }, -- @lsp.type.function xxx links to @function
        Function                                                  { fg="#dcdcaa", }, -- Function       xxx guifg=#dcdcaa
        TSFunction                                                { Function }, -- TSFunction     xxx links to Function
        TSMethod                                                  { Function }, -- TSMethod       xxx links to Function
        LspInfoList                                               { Function }, -- LspInfoList    xxx links to Function
        TelescopeResultsFunction                                  { Function }, -- TelescopeResultsFunction xxx links to Function
        TelescopeResultsField                                     { Function }, -- TelescopeResultsField xxx links to Function
        TelescopeResultsClass                                     { Function }, -- TelescopeResultsClass xxx links to Function
        sym"@function.builtin"                                    { fg="#dcdcaa", }, -- @function.builtin xxx guifg=#dcdcaa
        sym"@constructor"                                         { fg="#4ec9b0", }, -- @constructor   xxx guifg=#4ec9b0
        sym"@operator"                                            { fg="#d4d4d4", }, -- @operator      xxx guifg=#d4d4d4
        CmpItemKindOperator                                       { sym"@operator" }, -- CmpItemKindOperator xxx links to @operator
        Operator                                                  { fg="#d4d4d4", }, -- Operator       xxx guifg=#d4d4d4
        NvimAssignment                                            { Operator }, -- NvimAssignment xxx links to Operator
        NvimOperator                                              { Operator }, -- NvimOperator   xxx links to Operator
        TSOperator                                                { Operator }, -- TSOperator     xxx links to Operator
        TelescopeResultsOperator                                  { Operator }, -- TelescopeResultsOperator xxx links to Operator
        sym"@keyword"                                             { fg="#c586c0", }, -- @keyword       xxx guifg=#c586c0
        Delimiter                                                 { fg="#d4d4d4", }, -- Delimiter      xxx guifg=#d4d4d4
        sym"@punctuation"                                         { Delimiter }, -- @punctuation   xxx links to Delimiter
        NvimParenthesis                                           { Delimiter }, -- NvimParenthesis xxx links to Delimiter
        NvimColon                                                 { Delimiter }, -- NvimColon      xxx links to Delimiter
        NvimComma                                                 { Delimiter }, -- NvimComma      xxx links to Delimiter
        NvimArrow                                                 { Delimiter }, -- NvimArrow      xxx links to Delimiter
        TSTagDelimiter                                            { Delimiter }, -- TSTagDelimiter xxx links to Delimiter
        TSPunctSpecial                                            { Delimiter }, -- TSPunctSpecial xxx links to Delimiter
        TSPunctBracket                                            { Delimiter }, -- TSPunctBracket xxx links to Delimiter
        TSPunctDelimiter                                          { Delimiter }, -- TSPunctDelimiter xxx links to Delimiter
        sym"@punctuation.special"                                 { fg="#d4d4d4", }, -- @punctuation.special xxx guifg=#d4d4d4
        sym"@comment"                                             { fg="#6a9955", }, -- @comment       xxx guifg=#6a9955
        sym"@lsp.type.comment"                                    { sym"@comment" }, -- @lsp.type.comment xxx links to @comment
        sym"@comment.error"                                       { fg="#f44747", gui="bold", }, -- @comment.error xxx cterm=bold gui=bold guifg=#f44747
        sym"@text.danger"                                         { sym"@comment.error" }, -- @text.danger   xxx links to @comment.error
        sym"@comment.warning"                                     { fg="#d7ba7d", gui="bold", }, -- @comment.warning xxx cterm=bold gui=bold guifg=#d7ba7d
        sym"@text.warning"                                        { sym"@comment.warning" }, -- @text.warning  xxx links to @comment.warning
        sym"@comment.note"                                        { fg="#4ec9b0", gui="bold", }, -- @comment.note  xxx cterm=bold gui=bold guifg=#4ec9b0
        sym"@text.note"                                           { sym"@comment.note" }, -- @text.note     xxx links to @comment.note
        Todo                                                      { fg="#d7ba7d", gui="bold", bg="#1e1e1e", }, -- Todo           xxx cterm=bold gui=bold guifg=#d7ba7d guibg=#1e1e1e
        sym"@comment.todo"                                        { Todo }, -- @comment.todo  xxx links to Todo
        TSWarning                                                 { Todo }, -- TSWarning      xxx links to Todo
        TSTodo                                                    { Todo }, -- TSTodo         xxx links to Todo
        sym"@markup.list.checked"                                 { Todo }, -- @markup.list.checked xxx links to Todo
        sym"@markup.list.unchecked"                               { Todo }, -- @markup.list.unchecked xxx links to Todo
        sym"@markup.strong"                                       { fg="#569cd6", gui="bold", }, -- @markup.strong xxx cterm=bold gui=bold guifg=#569cd6
        sym"@text.strong"                                         { sym"@markup.strong" }, -- @text.strong   xxx links to @markup.strong
        sym"@markup.italic"                                       { fg="#d4d4d4", gui="italic", }, -- @markup.italic xxx cterm=italic gui=italic guifg=#d4d4d4
        sym"@text.emphasis"                                       { sym"@markup.italic" }, -- @text.emphasis xxx links to @markup.italic
        sym"@markup.strikethrough"                                { fg="#d4d4d4", gui="strikethrough", }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough guifg=#d4d4d4
        sym"@text.strike"                                         { sym"@markup.strikethrough" }, -- @text.strike   xxx links to @markup.strikethrough
        sym"@markup.underline"                                    { fg="#d7ba7d", gui="underline", }, -- @markup.underline xxx cterm=underline gui=underline guifg=#d7ba7d
        sym"@text.underline"                                      { sym"@markup.underline" }, -- @text.underline xxx links to @markup.underline
        sym"@markup.heading"                                      { fg="#569cd6", gui="bold", }, -- @markup.heading xxx cterm=bold gui=bold guifg=#569cd6
        sym"@text.title"                                          { sym"@markup.heading" }, -- @text.title    xxx links to @markup.heading
        Added                                                     { fg="nvimlightgreen", }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
        Removed                                                   { fg="nvimlightred", }, -- Removed        xxx ctermfg=9 guifg=NvimLightRed
        Changed                                                   { fg="nvimlightcyan", }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
        sym"@tag"                                                 { fg="#569cd6", }, -- @tag           xxx guifg=#569cd6
        sym"@constant.macro"                                      { fg="#4ec9b0", }, -- @constant.macro xxx guifg=#4ec9b0
        sym"@function.method"                                     { fg="#dcdcaa", }, -- @function.method xxx guifg=#dcdcaa
        sym"@lsp.type.method"                                     { sym"@function.method" }, -- @lsp.type.method xxx links to @function.method
        sym"@method"                                              { sym"@function.method" }, -- @method        xxx links to @function.method
        sym"@variable.parameter"                                  { fg="#9cdcfe", }, -- @variable.parameter xxx guifg=#9cdcfe
        sym"@lsp.type.parameter"                                  { sym"@variable.parameter" }, -- @lsp.type.parameter xxx links to @variable.parameter
        sym"@parameter"                                           { sym"@variable.parameter" }, -- @parameter     xxx links to @variable.parameter
        CmpItemKindTypeParameter                                  { sym"@variable.parameter" }, -- CmpItemKindTypeParameter xxx links to @variable.parameter
        FloatShadow                                               { bg="nvimdarkgrey4", blend=80, }, -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
        FloatShadowThrough                                        { bg="nvimdarkgrey4", blend=100, }, -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
        MatchParen                                                { bg="#51504f", }, -- MatchParen     xxx guibg=#51504f
        RedrawDebugClear                                          { bg="nvimdarkyellow", }, -- RedrawDebugClear xxx ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
        RedrawDebugComposed                                       { bg="nvimdarkgreen", }, -- RedrawDebugComposed xxx ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
        RedrawDebugRecompose                                      { bg="nvimdarkred", }, -- RedrawDebugRecompose xxx ctermfg=0 ctermbg=9 guibg=NvimDarkRed
        Error                                                     { fg="#f44747", gui="undercurl", sp="#f44747", bg="#1e1e1e", }, -- Error          xxx cterm=undercurl gui=undercurl guifg=#f44747 guibg=#1e1e1e guisp=#f44747
        NvimInvalid                                               { Error }, -- NvimInvalid    xxx links to Error
        TSQueryLinterError                                        { Error }, -- TSQueryLinterError xxx links to Error
        DiagnosticUnderlineError                                  { sp="#f44747", gui="undercurl", }, -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#f44747
        NvimTreeDiagnosticErrorFileHL                             { DiagnosticUnderlineError }, -- NvimTreeDiagnosticErrorFileHL xxx links to DiagnosticUnderlineError
        DiagnosticUnderlineWarn                                   { sp="#dcdcaa", gui="undercurl", }, -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#dcdcaa
        NvimTreeDiagnosticWarnFileHL                              { DiagnosticUnderlineWarn }, -- NvimTreeDiagnosticWarnFileHL xxx links to DiagnosticUnderlineWarn
        DiagnosticUnderlineInfo                                   { sp="#569cd6", gui="undercurl", }, -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#569cd6
        NvimTreeDiagnosticInfoFileHL                              { DiagnosticUnderlineInfo }, -- NvimTreeDiagnosticInfoFileHL xxx links to DiagnosticUnderlineInfo
        DiagnosticUnderlineHint                                   { sp="#569cd6", gui="undercurl", }, -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#569cd6
        NvimTreeDiagnosticHintFileHL                              { DiagnosticUnderlineHint }, -- NvimTreeDiagnosticHintFileHL xxx links to DiagnosticUnderlineHint
        DiagnosticUnderlineOk                                     { sp="nvimlightgreen", gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
        DiagnosticDeprecated                                      { sp="nvimlightred", gui="strikethrough", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
        NvimInternalError                                         { fg="red", bg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
        NvimFigureBrace                                           { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
        NvimSingleQuotedUnknownEscape                             { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
        NvimInvalidSingleQuotedUnknownEscape                      { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
        sym"@annotation"                                          { fg="#dcdcaa", }, -- @annotation    xxx guifg=#dcdcaa
        sym"@type.qualifier"                                      { fg="#569cd6", }, -- @type.qualifier xxx guifg=#569cd6
        sym"@function.macro"                                      { fg="#dcdcaa", }, -- @function.macro xxx guifg=#dcdcaa
        sym"@text"                                                { fg="#d4d4d4", }, -- @text          xxx guifg=#d4d4d4
        CmpItemKindSnippet                                        { sym"@text" }, -- CmpItemKindSnippet xxx links to @text
        TSStrike                                                  { gui="strikethrough", }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
        TSUnderline                                               { gui="underline", }, -- TSUnderline    xxx cterm=underline gui=underline
        TSEmphasis                                                { gui="italic", }, -- TSEmphasis     xxx cterm=italic gui=italic
        TSStrong                                                  { gui="bold", }, -- TSStrong       xxx cterm=bold gui=bold
        sym"@tag.delimiter"                                       { fg="#808080", }, -- @tag.delimiter xxx guifg=#808080
        sym"@tag.attribute"                                       { fg="#9cdcfe", }, -- @tag.attribute xxx guifg=#9cdcfe
        sym"@punctuation.bracket"                                 { fg="#d4d4d4", }, -- @punctuation.bracket xxx guifg=#d4d4d4
        sym"@punctuation.delimiter"                               { fg="#d4d4d4", }, -- @punctuation.delimiter xxx guifg=#d4d4d4
        sym"@keyword.operator"                                    { fg="#569cd6", }, -- @keyword.operator xxx guifg=#569cd6
        sym"@keyword.function"                                    { fg="#569cd6", }, -- @keyword.function xxx guifg=#569cd6
        sym"@error"                                               { fg="#f44747", }, -- @error         xxx guifg=#f44747
        sym"@attribute.builtin"                                   { fg="#4ec9b0", }, -- @attribute.builtin xxx guifg=#4ec9b0
        sym"@variable.parameter.reference"                        { fg="#9cdcfe", }, -- @variable.parameter.reference xxx guifg=#9cdcfe
        CmpItemKindReference                                      { sym"@variable.parameter.reference" }, -- CmpItemKindReference xxx links to @variable.parameter.reference
        sym"@variable.member"                                     { fg="#9cdcfe", }, -- @variable.member xxx guifg=#9cdcfe
        sym"@field"                                               { sym"@variable.member" }, -- @field         xxx links to @variable.member
        CmpItemKindValue                                          { sym"@variable.member" }, -- CmpItemKindValue xxx links to @variable.member
        CmpItemKindField                                          { sym"@variable.member" }, -- CmpItemKindField xxx links to @variable.member
        CmpItemKindEnum                                           { sym"@variable.member" }, -- CmpItemKindEnum xxx links to @variable.member
        CmpItemKindEnumMember                                     { sym"@variable.member" }, -- CmpItemKindEnumMember xxx links to @variable.member
        sym"@keyword.conditional"                                 { fg="#c586c0", }, -- @keyword.conditional xxx guifg=#c586c0
        sym"@conditional"                                         { sym"@keyword.conditional" }, -- @conditional   xxx links to @keyword.conditional
        sym"@keyword.repeat"                                      { fg="#c586c0", }, -- @keyword.repeat xxx guifg=#c586c0
        sym"@repeat"                                              { sym"@keyword.repeat" }, -- @repeat        xxx links to @keyword.repeat
        sym"@keyword.exception"                                   { fg="#c586c0", }, -- @keyword.exception xxx guifg=#c586c0
        sym"@exception"                                           { sym"@keyword.exception" }, -- @exception     xxx links to @keyword.exception
        sym"@keyword.storage"                                     { fg="#569cd6", }, -- @keyword.storage xxx guifg=#569cd6
        sym"@storageclass"                                        { sym"@keyword.storage" }, -- @storageclass  xxx links to @keyword.storage
        sym"@keyword.import"                                      { fg="#c586c0", }, -- @keyword.import xxx guifg=#c586c0
        sym"@include"                                             { sym"@keyword.import" }, -- @include       xxx links to @keyword.import
        sym"@structure"                                           { fg="#9cdcfe", }, -- @structure     xxx guifg=#9cdcfe
        CmpItemKindStruct                                         { sym"@structure" }, -- CmpItemKindStruct xxx links to @structure
        sym"@markup.raw"                                          { fg="#d4d4d4", }, -- @markup.raw    xxx guifg=#d4d4d4
        sym"@text.literal"                                        { sym"@markup.raw" }, -- @text.literal  xxx links to @markup.raw
        sym"@markup.raw.markdown"                                 { fg="#ce9178", }, -- @markup.raw.markdown xxx guifg=#ce9178
        sym"@markup.raw.markdown_inline"                          { fg="#ce9178", }, -- @markup.raw.markdown_inline xxx guifg=#ce9178
        sym"@markup.link.label"                                   { fg="#9cdcfe", }, -- @markup.link.label xxx guifg=#9cdcfe
        sym"@markup.link.url"                                     { fg="#d4d4d4", }, -- @markup.link.url xxx guifg=#d4d4d4
        sym"@text.uri"                                            { sym"@markup.link.url" }, -- @text.uri      xxx links to @markup.link.url
        sym"@textReference"                                       { fg="#ce9178", }, -- @textReference xxx guifg=#ce9178
        sym"@stringEscape"                                        { fg="#ce9178", gui="bold", }, -- @stringEscape  xxx cterm=bold gui=bold guifg=#ce9178
        sym"@regexp"                                              { fg="#f44747", }, -- @regexp        xxx guifg=#f44747
        markdownBold                                              { fg="#569cd6", gui="bold", }, -- markdownBold   xxx cterm=bold gui=bold guifg=#569cd6
        asciidocQuotedBold                                        { markdownBold }, -- asciidocQuotedBold xxx links to markdownBold
        markdownCode                                              { fg="#ce9178", }, -- markdownCode   xxx guifg=#ce9178
        markdownRule                                              { fg="#569cd6", gui="bold", }, -- markdownRule   xxx cterm=bold gui=bold guifg=#569cd6
        markdownCodeDelimiter                                     { fg="#d4d4d4", }, -- markdownCodeDelimiter xxx guifg=#d4d4d4
        markdownHeadingDelimiter                                  { fg="#569cd6", }, -- markdownHeadingDelimiter xxx guifg=#569cd6
        markdownFootnote                                          { fg="#ce9178", }, -- markdownFootnote xxx guifg=#ce9178
        markdownFootnoteDefinition                                { fg="#ce9178", }, -- markdownFootnoteDefinition xxx guifg=#ce9178
        markdownUrl                                               { fg="#d4d4d4", gui="underline", }, -- markdownUrl    xxx cterm=underline gui=underline guifg=#d4d4d4
        asciidocURL                                               { markdownUrl }, -- asciidocURL    xxx links to markdownUrl
        markdownLinkText                                          { fg="#ce9178", }, -- markdownLinkText xxx guifg=#ce9178
        markdownEscape                                            { fg="#ce9178", }, -- markdownEscape xxx guifg=#ce9178
        asciidocAttributeEntry                                    { fg="#d7ba7d", }, -- asciidocAttributeEntry xxx guifg=#d7ba7d
        asciidocAttributeList                                     { fg="#c586c0", }, -- asciidocAttributeList xxx guifg=#c586c0
        asciidocAttributeRef                                      { fg="#d7ba7d", }, -- asciidocAttributeRef xxx guifg=#d7ba7d
        asciidocHLabel                                            { fg="#569cd6", gui="bold", }, -- asciidocHLabel xxx cterm=bold gui=bold guifg=#569cd6
        asciidocListingBlock                                      { fg="#ce9178", }, -- asciidocListingBlock xxx guifg=#ce9178
        asciidocMacroAttributes                                   { fg="#d7ba7d", }, -- asciidocMacroAttributes xxx guifg=#d7ba7d
        asciidocOneLineTitle                                      { fg="#569cd6", gui="bold", }, -- asciidocOneLineTitle xxx cterm=bold gui=bold guifg=#569cd6
        asciidocPassthroughBlock                                  { fg="#569cd6", }, -- asciidocPassthroughBlock xxx guifg=#569cd6
        asciidocQuotedMonospaced                                  { fg="#ce9178", }, -- asciidocQuotedMonospaced xxx guifg=#ce9178
        asciidocQuotedMonospaced2                                 { asciidocQuotedMonospaced }, -- asciidocQuotedMonospaced2 xxx links to asciidocQuotedMonospaced
        asciidocTriplePlusPassthrough                             { fg="#dcdcaa", }, -- asciidocTriplePlusPassthrough xxx guifg=#dcdcaa
        asciidocMacro                                             { fg="#c586c0", }, -- asciidocMacro  xxx guifg=#c586c0
        asciidocAdmonition                                        { fg="#ce9178", }, -- asciidocAdmonition xxx guifg=#ce9178
        asciidocQuotedEmphasized                                  { fg="#569cd6", gui="italic", }, -- asciidocQuotedEmphasized xxx cterm=italic gui=italic guifg=#569cd6
        asciidocQuotedUnconstrainedEmphasized                     { asciidocQuotedEmphasized }, -- asciidocQuotedUnconstrainedEmphasized xxx links to asciidocQuotedEmphasized
        asciidocQuotedEmphasized2                                 { fg="#569cd6", gui="italic", }, -- asciidocQuotedEmphasized2 xxx cterm=italic gui=italic guifg=#569cd6
        asciidocQuotedEmphasizedItalic                            { fg="#569cd6", gui="italic", }, -- asciidocQuotedEmphasizedItalic xxx cterm=italic gui=italic guifg=#569cd6
        jsonKeyword                                               { fg="#9cdcfe", }, -- jsonKeyword    xxx guifg=#9cdcfe
        jsonEscape                                                { fg="#d7ba7d", }, -- jsonEscape     xxx guifg=#d7ba7d
        jsonNull                                                  { fg="#569cd6", }, -- jsonNull       xxx guifg=#569cd6
        jsonBoolean                                               { fg="#569cd6", }, -- jsonBoolean    xxx guifg=#569cd6
        htmlTag                                                   { fg="#808080", }, -- htmlTag        xxx guifg=#808080
        htmlEndTag                                                { fg="#808080", }, -- htmlEndTag     xxx guifg=#808080
        htmlTagName                                               { fg="#569cd6", }, -- htmlTagName    xxx guifg=#569cd6
        htmlSpecialTagName                                        { fg="#569cd6", }, -- htmlSpecialTagName xxx guifg=#569cd6
        htmlArg                                                   { fg="#9cdcfe", }, -- htmlArg        xxx guifg=#9cdcfe
        phpStaticClasses                                          { fg="#4ec9b0", }, -- phpStaticClasses xxx guifg=#4ec9b0
        phpMethod                                                 { fg="#dcdcaa", }, -- phpMethod      xxx guifg=#dcdcaa
        phpClass                                                  { fg="#4ec9b0", }, -- phpClass       xxx guifg=#4ec9b0
        phpFunction                                               { fg="#dcdcaa", }, -- phpFunction    xxx guifg=#dcdcaa
        phpInclude                                                { fg="#569cd6", }, -- phpInclude     xxx guifg=#569cd6
        phpUseClass                                               { fg="#4ec9b0", }, -- phpUseClass    xxx guifg=#4ec9b0
        phpRegion                                                 { fg="#4ec9b0", }, -- phpRegion      xxx guifg=#4ec9b0
        phpMethodsVar                                             { fg="#9cdcfe", }, -- phpMethodsVar  xxx guifg=#9cdcfe
        cssBraces                                                 { fg="#d4d4d4", }, -- cssBraces      xxx guifg=#d4d4d4
        cssInclude                                                { fg="#c586c0", }, -- cssInclude     xxx guifg=#c586c0
        cssTagName                                                { fg="#d7ba7d", }, -- cssTagName     xxx guifg=#d7ba7d
        cssClassName                                              { fg="#d7ba7d", }, -- cssClassName   xxx guifg=#d7ba7d
        cssPseudoClass                                            { fg="#d7ba7d", }, -- cssPseudoClass xxx guifg=#d7ba7d
        cssPseudoClassId                                          { fg="#d7ba7d", }, -- cssPseudoClassId xxx guifg=#d7ba7d
        cssPseudoClassLang                                        { fg="#d7ba7d", }, -- cssPseudoClassLang xxx guifg=#d7ba7d
        cssIdentifier                                             { fg="#d7ba7d", }, -- cssIdentifier  xxx guifg=#d7ba7d
        cssProp                                                   { fg="#9cdcfe", }, -- cssProp        xxx guifg=#9cdcfe
        cssDefinition                                             { fg="#9cdcfe", }, -- cssDefinition  xxx guifg=#9cdcfe
        cssAttr                                                   { fg="#ce9178", }, -- cssAttr        xxx guifg=#ce9178
        cssAttrRegion                                             { fg="#ce9178", }, -- cssAttrRegion  xxx guifg=#ce9178
        cssColor                                                  { fg="#ce9178", }, -- cssColor       xxx guifg=#ce9178
        CmpItemKindColor                                          { cssColor }, -- CmpItemKindColor xxx links to cssColor
        cssFunction                                               { fg="#ce9178", }, -- cssFunction    xxx guifg=#ce9178
        cssFunctionName                                           { fg="#ce9178", }, -- cssFunctionName xxx guifg=#ce9178
        cssVendor                                                 { fg="#ce9178", }, -- cssVendor      xxx guifg=#ce9178
        cssValueNumber                                            { fg="#ce9178", }, -- cssValueNumber xxx guifg=#ce9178
        cssValueLength                                            { fg="#ce9178", }, -- cssValueLength xxx guifg=#ce9178
        cssUnitDecorators                                         { fg="#ce9178", }, -- cssUnitDecorators xxx guifg=#ce9178
        cssStyle                                                  { fg="#9cdcfe", }, -- cssStyle       xxx guifg=#9cdcfe
        cssImportant                                              { fg="#569cd6", }, -- cssImportant   xxx guifg=#569cd6
        jsVariableDef                                             { fg="#9cdcfe", }, -- jsVariableDef  xxx guifg=#9cdcfe
        jsFuncArgs                                                { fg="#9cdcfe", }, -- jsFuncArgs     xxx guifg=#9cdcfe
        jsFuncBlock                                               { fg="#9cdcfe", }, -- jsFuncBlock    xxx guifg=#9cdcfe
        jsRegexpString                                            { fg="#d16969", }, -- jsRegexpString xxx guifg=#d16969
        jsThis                                                    { fg="#569cd6", }, -- jsThis         xxx guifg=#569cd6
        jsOperatorKeyword                                         { fg="#569cd6", }, -- jsOperatorKeyword xxx guifg=#569cd6
        jsDestructuringBlock                                      { fg="#9cdcfe", }, -- jsDestructuringBlock xxx guifg=#9cdcfe
        jsObjectKey                                               { fg="#9cdcfe", }, -- jsObjectKey    xxx guifg=#9cdcfe
        jsGlobalObjects                                           { fg="#4ec9b0", }, -- jsGlobalObjects xxx guifg=#4ec9b0
        jsModuleKeyword                                           { fg="#9cdcfe", }, -- jsModuleKeyword xxx guifg=#9cdcfe
        jsClassDefinition                                         { fg="#4ec9b0", }, -- jsClassDefinition xxx guifg=#4ec9b0
        jsClassKeyword                                            { fg="#569cd6", }, -- jsClassKeyword xxx guifg=#569cd6
        jsExtendsKeyword                                          { fg="#569cd6", }, -- jsExtendsKeyword xxx guifg=#569cd6
        jsExportDefault                                           { fg="#c586c0", }, -- jsExportDefault xxx guifg=#c586c0
        jsFuncCall                                                { fg="#dcdcaa", }, -- jsFuncCall     xxx guifg=#dcdcaa
        jsObjectValue                                             { fg="#9cdcfe", }, -- jsObjectValue  xxx guifg=#9cdcfe
        jsParen                                                   { fg="#9cdcfe", }, -- jsParen        xxx guifg=#9cdcfe
        jsObjectProp                                              { fg="#9cdcfe", }, -- jsObjectProp   xxx guifg=#9cdcfe
        jsIfElseBlock                                             { fg="#9cdcfe", }, -- jsIfElseBlock  xxx guifg=#9cdcfe
        jsParenIfElse                                             { fg="#9cdcfe", }, -- jsParenIfElse  xxx guifg=#9cdcfe
        jsSpreadOperator                                          { fg="#9cdcfe", }, -- jsSpreadOperator xxx guifg=#9cdcfe
        jsSpreadExpression                                        { fg="#9cdcfe", }, -- jsSpreadExpression xxx guifg=#9cdcfe
        typescriptLabel                                           { fg="#9cdcfe", }, -- typescriptLabel xxx guifg=#9cdcfe
        typescriptExceptions                                      { fg="#9cdcfe", }, -- typescriptExceptions xxx guifg=#9cdcfe
        typescriptBraces                                          { fg="#d4d4d4", }, -- typescriptBraces xxx guifg=#d4d4d4
        typescriptEndColons                                       { fg="#9cdcfe", }, -- typescriptEndColons xxx guifg=#9cdcfe
        typescriptParens                                          { fg="#d4d4d4", }, -- typescriptParens xxx guifg=#d4d4d4
        typescriptDocTags                                         { fg="#569cd6", }, -- typescriptDocTags xxx guifg=#569cd6
        typescriptDocComment                                      { fg="#4ec9b0", }, -- typescriptDocComment xxx guifg=#4ec9b0
        typescriptLogicSymbols                                    { fg="#9cdcfe", }, -- typescriptLogicSymbols xxx guifg=#9cdcfe
        typescriptImport                                          { fg="#c586c0", }, -- typescriptImport xxx guifg=#c586c0
        typescriptBOM                                             { fg="#9cdcfe", }, -- typescriptBOM  xxx guifg=#9cdcfe
        typescriptVariableDeclaration                             { fg="#9cdcfe", }, -- typescriptVariableDeclaration xxx guifg=#9cdcfe
        typescriptVariable                                        { fg="#569cd6", }, -- typescriptVariable xxx guifg=#569cd6
        typescriptExport                                          { fg="#c586c0", }, -- typescriptExport xxx guifg=#c586c0
        typescriptAliasDeclaration                                { fg="#4ec9b0", }, -- typescriptAliasDeclaration xxx guifg=#4ec9b0
        typescriptAliasKeyword                                    { fg="#569cd6", }, -- typescriptAliasKeyword xxx guifg=#569cd6
        typescriptClassName                                       { fg="#4ec9b0", }, -- typescriptClassName xxx guifg=#4ec9b0
        typescriptAccessibilityModifier                           { fg="#569cd6", }, -- typescriptAccessibilityModifier xxx guifg=#569cd6
        typescriptOperator                                        { fg="#569cd6", }, -- typescriptOperator xxx guifg=#569cd6
        typescriptArrowFunc                                       { fg="#569cd6", }, -- typescriptArrowFunc xxx guifg=#569cd6
        typescriptMethodAccessor                                  { fg="#569cd6", }, -- typescriptMethodAccessor xxx guifg=#569cd6
        typescriptMember                                          { fg="#dcdcaa", }, -- typescriptMember xxx guifg=#dcdcaa
        typescriptTypeReference                                   { fg="#4ec9b0", }, -- typescriptTypeReference xxx guifg=#4ec9b0
        typescriptTemplateSB                                      { fg="#d7ba7d", }, -- typescriptTemplateSB xxx guifg=#d7ba7d
        typescriptArrowFuncArg                                    { fg="#9cdcfe", }, -- typescriptArrowFuncArg xxx guifg=#9cdcfe
        typescriptParamImpl                                       { fg="#9cdcfe", }, -- typescriptParamImpl xxx guifg=#9cdcfe
        typescriptFuncComma                                       { fg="#9cdcfe", }, -- typescriptFuncComma xxx guifg=#9cdcfe
        typescriptCastKeyword                                     { fg="#9cdcfe", }, -- typescriptCastKeyword xxx guifg=#9cdcfe
        typescriptCall                                            { fg="#569cd6", }, -- typescriptCall xxx guifg=#569cd6
        typescriptCase                                            { fg="#9cdcfe", }, -- typescriptCase xxx guifg=#9cdcfe
        typescriptReserved                                        { fg="#c586c0", }, -- typescriptReserved xxx guifg=#c586c0
        typescriptDefault                                         { fg="#9cdcfe", }, -- typescriptDefault xxx guifg=#9cdcfe
        typescriptDecorator                                       { fg="#dcdcaa", }, -- typescriptDecorator xxx guifg=#dcdcaa
        typescriptPredefinedType                                  { fg="#4ec9b0", }, -- typescriptPredefinedType xxx guifg=#4ec9b0
        typescriptClassHeritage                                   { fg="#4ec9b0", }, -- typescriptClassHeritage xxx guifg=#4ec9b0
        typescriptClassExtends                                    { fg="#569cd6", }, -- typescriptClassExtends xxx guifg=#569cd6
        typescriptClassKeyword                                    { fg="#569cd6", }, -- typescriptClassKeyword xxx guifg=#569cd6
        typescriptBlock                                           { fg="#9cdcfe", }, -- typescriptBlock xxx guifg=#9cdcfe
        typescriptDOMDocProp                                      { fg="#9cdcfe", }, -- typescriptDOMDocProp xxx guifg=#9cdcfe
        typescriptTemplateSubstitution                            { fg="#9cdcfe", }, -- typescriptTemplateSubstitution xxx guifg=#9cdcfe
        typescriptClassBlock                                      { fg="#9cdcfe", }, -- typescriptClassBlock xxx guifg=#9cdcfe
        typescriptFuncCallArg                                     { fg="#9cdcfe", }, -- typescriptFuncCallArg xxx guifg=#9cdcfe
        typescriptIndexExpr                                       { fg="#9cdcfe", }, -- typescriptIndexExpr xxx guifg=#9cdcfe
        typescriptConditionalParen                                { fg="#9cdcfe", }, -- typescriptConditionalParen xxx guifg=#9cdcfe
        typescriptArray                                           { fg="#dcdcaa", }, -- typescriptArray xxx guifg=#dcdcaa
        typescriptES6SetProp                                      { fg="#9cdcfe", }, -- typescriptES6SetProp xxx guifg=#9cdcfe
        typescriptObjectLiteral                                   { fg="#9cdcfe", }, -- typescriptObjectLiteral xxx guifg=#9cdcfe
        typescriptTypeParameter                                   { fg="#4ec9b0", }, -- typescriptTypeParameter xxx guifg=#4ec9b0
        typescriptEnumKeyword                                     { fg="#569cd6", }, -- typescriptEnumKeyword xxx guifg=#569cd6
        typescriptEnum                                            { fg="#4ec9b0", }, -- typescriptEnum xxx guifg=#4ec9b0
        typescriptLoopParen                                       { fg="#9cdcfe", }, -- typescriptLoopParen xxx guifg=#9cdcfe
        typescriptParenExp                                        { fg="#9cdcfe", }, -- typescriptParenExp xxx guifg=#9cdcfe
        typescriptModule                                          { fg="#9cdcfe", }, -- typescriptModule xxx guifg=#9cdcfe
        typescriptAmbientDeclaration                              { fg="#569cd6", }, -- typescriptAmbientDeclaration xxx guifg=#569cd6
        typescriptFuncTypeArrow                                   { fg="#569cd6", }, -- typescriptFuncTypeArrow xxx guifg=#569cd6
        typescriptInterfaceHeritage                               { fg="#4ec9b0", }, -- typescriptInterfaceHeritage xxx guifg=#4ec9b0
        typescriptInterfaceName                                   { fg="#4ec9b0", }, -- typescriptInterfaceName xxx guifg=#4ec9b0
        typescriptInterfaceKeyword                                { fg="#569cd6", }, -- typescriptInterfaceKeyword xxx guifg=#569cd6
        typescriptInterfaceExtends                                { fg="#569cd6", }, -- typescriptInterfaceExtends xxx guifg=#569cd6
        typescriptGlobal                                          { fg="#4ec9b0", }, -- typescriptGlobal xxx guifg=#4ec9b0
        typescriptAsyncFuncKeyword                                { fg="#569cd6", }, -- typescriptAsyncFuncKeyword xxx guifg=#569cd6
        typescriptFuncKeyword                                     { fg="#569cd6", }, -- typescriptFuncKeyword xxx guifg=#569cd6
        typescriptGlobalMethod                                    { fg="#dcdcaa", }, -- typescriptGlobalMethod xxx guifg=#dcdcaa
        typescriptPromiseMethod                                   { fg="#dcdcaa", }, -- typescriptPromiseMethod xxx guifg=#dcdcaa
        xmlTag                                                    { fg="#569cd6", }, -- xmlTag         xxx guifg=#569cd6
        xmlTagName                                                { fg="#569cd6", }, -- xmlTagName     xxx guifg=#569cd6
        xmlEndTag                                                 { fg="#569cd6", }, -- xmlEndTag      xxx guifg=#569cd6
        rubyClassNameTag                                          { fg="#4ec9b0", }, -- rubyClassNameTag xxx guifg=#4ec9b0
        rubyClassName                                             { fg="#4ec9b0", }, -- rubyClassName  xxx guifg=#4ec9b0
        rubyModuleName                                            { fg="#4ec9b0", }, -- rubyModuleName xxx guifg=#4ec9b0
        rubyConstant                                              { fg="#4ec9b0", }, -- rubyConstant   xxx guifg=#4ec9b0
        goPackage                                                 { fg="#569cd6", }, -- goPackage      xxx guifg=#569cd6
        goImport                                                  { fg="#569cd6", }, -- goImport       xxx guifg=#569cd6
        goVar                                                     { fg="#569cd6", }, -- goVar          xxx guifg=#569cd6
        goConst                                                   { fg="#569cd6", }, -- goConst        xxx guifg=#569cd6
        goStatement                                               { fg="#c586c0", }, -- goStatement    xxx guifg=#c586c0
        goType                                                    { fg="#4ec9b0", }, -- goType         xxx guifg=#4ec9b0
        goSignedInts                                              { fg="#4ec9b0", }, -- goSignedInts   xxx guifg=#4ec9b0
        goUnsignedInts                                            { fg="#4ec9b0", }, -- goUnsignedInts xxx guifg=#4ec9b0
        goFloats                                                  { fg="#4ec9b0", }, -- goFloats       xxx guifg=#4ec9b0
        goComplexes                                               { fg="#4ec9b0", }, -- goComplexes    xxx guifg=#4ec9b0
        goBuiltins                                                { fg="#dcdcaa", }, -- goBuiltins     xxx guifg=#dcdcaa
        goBoolean                                                 { fg="#569cd6", }, -- goBoolean      xxx guifg=#569cd6
        goPredefinedIdentifiers                                   { fg="#569cd6", }, -- goPredefinedIdentifiers xxx guifg=#569cd6
        goTodo                                                    { fg="#6a9955", }, -- goTodo         xxx guifg=#6a9955
        goDeclaration                                             { fg="#569cd6", }, -- goDeclaration  xxx guifg=#569cd6
        goDeclType                                                { fg="#569cd6", }, -- goDeclType     xxx guifg=#569cd6
        goTypeDecl                                                { fg="#569cd6", }, -- goTypeDecl     xxx guifg=#569cd6
        goTypeName                                                { fg="#4ec9b0", }, -- goTypeName     xxx guifg=#4ec9b0
        goVarAssign                                               { fg="#9cdcfe", }, -- goVarAssign    xxx guifg=#9cdcfe
        goVarDefs                                                 { fg="#9cdcfe", }, -- goVarDefs      xxx guifg=#9cdcfe
        goReceiver                                                { fg="#d4d4d4", }, -- goReceiver     xxx guifg=#d4d4d4
        goReceiverType                                            { fg="#d4d4d4", }, -- goReceiverType xxx guifg=#d4d4d4
        goFunctionCall                                            { fg="#dcdcaa", }, -- goFunctionCall xxx guifg=#dcdcaa
        goMethodCall                                              { fg="#dcdcaa", }, -- goMethodCall   xxx guifg=#dcdcaa
        goSingleDecl                                              { fg="#9cdcfe", }, -- goSingleDecl   xxx guifg=#9cdcfe
        pythonStatement                                           { fg="#569cd6", }, -- pythonStatement xxx guifg=#569cd6
        pythonOperator                                            { fg="#569cd6", }, -- pythonOperator xxx guifg=#569cd6
        pythonException                                           { fg="#c586c0", }, -- pythonException xxx guifg=#c586c0
        pythonExClass                                             { fg="#4ec9b0", }, -- pythonExClass  xxx guifg=#4ec9b0
        pythonBuiltinObj                                          { fg="#9cdcfe", }, -- pythonBuiltinObj xxx guifg=#9cdcfe
        pythonBuiltinType                                         { fg="#4ec9b0", }, -- pythonBuiltinType xxx guifg=#4ec9b0
        pythonBoolean                                             { fg="#569cd6", }, -- pythonBoolean  xxx guifg=#569cd6
        pythonNone                                                { fg="#569cd6", }, -- pythonNone     xxx guifg=#569cd6
        pythonTodo                                                { fg="#569cd6", }, -- pythonTodo     xxx guifg=#569cd6
        pythonClassVar                                            { fg="#569cd6", }, -- pythonClassVar xxx guifg=#569cd6
        pythonClassDef                                            { fg="#4ec9b0", }, -- pythonClassDef xxx guifg=#4ec9b0
        texStatement                                              { fg="#569cd6", }, -- texStatement   xxx guifg=#569cd6
        texBeginEnd                                               { fg="#dcdcaa", }, -- texBeginEnd    xxx guifg=#dcdcaa
        texBeginEndName                                           { fg="#9cdcfe", }, -- texBeginEndName xxx guifg=#9cdcfe
        texOption                                                 { fg="#9cdcfe", }, -- texOption      xxx guifg=#9cdcfe
        texBeginEndModifier                                       { fg="#9cdcfe", }, -- texBeginEndModifier xxx guifg=#9cdcfe
        texDocType                                                { fg="#c586c0", }, -- texDocType     xxx guifg=#c586c0
        texDocTypeArgs                                            { fg="#9cdcfe", }, -- texDocTypeArgs xxx guifg=#9cdcfe
        gitcommitHeader                                           { fg="#808080", }, -- gitcommitHeader xxx guifg=#808080
        gitcommitOnBranch                                         { fg="#808080", }, -- gitcommitOnBranch xxx guifg=#808080
        gitcommitBranch                                           { fg="#c586c0", }, -- gitcommitBranch xxx guifg=#c586c0
        gitcommitComment                                          { fg="#808080", }, -- gitcommitComment xxx guifg=#808080
        gitcommitSelectedType                                     { fg="#6a9955", }, -- gitcommitSelectedType xxx guifg=#6a9955
        gitcommitSelectedFile                                     { fg="#6a9955", }, -- gitcommitSelectedFile xxx guifg=#6a9955
        gitcommitDiscardedType                                    { fg="#f44747", }, -- gitcommitDiscardedType xxx guifg=#f44747
        gitcommitDiscardedFile                                    { fg="#f44747", }, -- gitcommitDiscardedFile xxx guifg=#f44747
        gitcommitOverflow                                         { fg="#f44747", }, -- gitcommitOverflow xxx guifg=#f44747
        gitcommitSummary                                          { fg="#c586c0", }, -- gitcommitSummary xxx guifg=#c586c0
        gitcommitBlank                                            { fg="#c586c0", }, -- gitcommitBlank xxx guifg=#c586c0
        luaFuncCall                                               { fg="#dcdcaa", }, -- luaFuncCall    xxx guifg=#dcdcaa
        luaFuncArgName                                            { fg="#9cdcfe", }, -- luaFuncArgName xxx guifg=#9cdcfe
        luaFuncKeyword                                            { fg="#c586c0", }, -- luaFuncKeyword xxx guifg=#c586c0
        luaLocal                                                  { fg="#c586c0", }, -- luaLocal       xxx guifg=#c586c0
        luaBuiltIn                                                { fg="#569cd6", }, -- luaBuiltIn     xxx guifg=#569cd6
        shDeref                                                   { fg="#9cdcfe", }, -- shDeref        xxx guifg=#9cdcfe
        shVariable                                                { fg="#9cdcfe", }, -- shVariable     xxx guifg=#9cdcfe
        sqlKeyword                                                { fg="#c586c0", }, -- sqlKeyword     xxx guifg=#c586c0
        sqlFunction                                               { fg="#d7ba7d", }, -- sqlFunction    xxx guifg=#d7ba7d
        sqlOperator                                               { fg="#c586c0", }, -- sqlOperator    xxx guifg=#c586c0
        yamlKey                                                   { fg="#569cd6", }, -- yamlKey        xxx guifg=#569cd6
        yamlConstant                                              { fg="#569cd6", }, -- yamlConstant   xxx guifg=#569cd6
        GitGutterAdd                                              { fg="#6a9955", }, -- GitGutterAdd   xxx guifg=#6a9955
        GitGutterChange                                           { fg="#dcdcaa", }, -- GitGutterChange xxx guifg=#dcdcaa
        GitGutterDelete                                           { fg="#f44747", }, -- GitGutterDelete xxx guifg=#f44747
        GitSignsAdd                                               { fg="#6a9955", }, -- GitSignsAdd    xxx guifg=#6a9955
        GitSignsChange                                            { fg="#dcdcaa", }, -- GitSignsChange xxx guifg=#dcdcaa
        GitSignsDelete                                            { fg="#f44747", }, -- GitSignsDelete xxx guifg=#f44747
        GitSignsAddLn                                             { fg="#1e1e1e", bg="#6a9955", }, -- GitSignsAddLn  xxx guifg=#1e1e1e guibg=#6a9955
        GitSignsChangeLn                                          { fg="#1e1e1e", bg="#dcdcaa", }, -- GitSignsChangeLn xxx guifg=#1e1e1e guibg=#dcdcaa
        GitSignsDeleteLn                                          { fg="#1e1e1e", bg="#f44747", }, -- GitSignsDeleteLn xxx guifg=#1e1e1e guibg=#f44747
        NvimTreeRootFolder                                        { fg="#d4d4d4", gui="bold", }, -- NvimTreeRootFolder xxx cterm=bold gui=bold guifg=#d4d4d4
        NvimTreeGitDirty                                          { fg="#e2c08d", }, -- NvimTreeGitDirty xxx guifg=#e2c08d
        NvimTreeGitDirtyIcon                                      { NvimTreeGitDirty }, -- NvimTreeGitDirtyIcon xxx links to NvimTreeGitDirty
        NvimTreeGitNew                                            { fg="#81b88b", }, -- NvimTreeGitNew xxx guifg=#81b88b
        NvimTreeGitNewIcon                                        { NvimTreeGitNew }, -- NvimTreeGitNewIcon xxx links to NvimTreeGitNew
        NvimTreeImageFile                                         { fg="#646695", }, -- NvimTreeImageFile xxx guifg=#646695
        NvimTreeEmptyFolderName                                   { fg="#808080", }, -- NvimTreeEmptyFolderName xxx guifg=#808080
        NvimTreeFolderName                                        { fg="#d4d4d4", }, -- NvimTreeFolderName xxx guifg=#d4d4d4
        NvimTreeSpecialFile                                       { fg="#c586c0", gui="underline", }, -- NvimTreeSpecialFile xxx cterm=underline gui=underline guifg=#c586c0
        NvimTreeNormal                                            { fg="#d4d4d4", bg="#252526", }, -- NvimTreeNormal xxx guifg=#d4d4d4 guibg=#252526
        NvimTreeNormalNC                                          { NvimTreeNormal }, -- NvimTreeNormalNC xxx links to NvimTreeNormal
        NvimTreeSignColumn                                        { NvimTreeNormal }, -- NvimTreeSignColumn xxx links to NvimTreeNormal
        NvimTreeFileIcon                                          { NvimTreeNormal }, -- NvimTreeFileIcon xxx links to NvimTreeNormal
        NvimTreeSymlinkIcon                                       { NvimTreeNormal }, -- NvimTreeSymlinkIcon xxx links to NvimTreeNormal
        NvimTreeCursorLine                                        { bg="#373737", }, -- NvimTreeCursorLine xxx guibg=#373737
        NvimTreeVertSplit                                         { fg="#1e1e1e", bg="#1e1e1e", }, -- NvimTreeVertSplit xxx guifg=#1e1e1e guibg=#1e1e1e
        NvimTreeEndOfBuffer                                       { fg="#252526", }, -- NvimTreeEndOfBuffer xxx guifg=#252526
        NvimTreeOpenedFolderName                                  { bg="#252526", }, -- NvimTreeOpenedFolderName xxx guibg=#252526
        NvimTreeGitRenamed                                        { fg="#73c991", }, -- NvimTreeGitRenamed xxx guifg=#73c991
        NvimTreeGitRenamedIcon                                    { NvimTreeGitRenamed }, -- NvimTreeGitRenamedIcon xxx links to NvimTreeGitRenamed
        NvimTreeGitIgnored                                        { fg="#8c8c8c", }, -- NvimTreeGitIgnored xxx guifg=#8c8c8c
        NvimTreeGitIgnoredIcon                                    { NvimTreeGitIgnored }, -- NvimTreeGitIgnoredIcon xxx links to NvimTreeGitIgnored
        NvimTreeGitDeleted                                        { fg="#c74e39", }, -- NvimTreeGitDeleted xxx guifg=#c74e39
        NvimTreeGitDeletedIcon                                    { NvimTreeGitDeleted }, -- NvimTreeGitDeletedIcon xxx links to NvimTreeGitDeleted
        NvimTreeGitStaged                                         { fg="#e2c08d", }, -- NvimTreeGitStaged xxx guifg=#e2c08d
        NvimTreeGitStagedIcon                                     { NvimTreeGitStaged }, -- NvimTreeGitStagedIcon xxx links to NvimTreeGitStaged
        NvimTreeGitMerge                                          { fg="#73c991", }, -- NvimTreeGitMerge xxx guifg=#73c991
        NvimTreeGitMergeIcon                                      { NvimTreeGitMerge }, -- NvimTreeGitMergeIcon xxx links to NvimTreeGitMerge
        BufferLineIndicatorSelected                               { fg="#252526", }, -- BufferLineIndicatorSelected xxx guifg=#252526
        BufferLineFill                                            { bg="#252526", }, -- BufferLineFill xxx guibg=#252526
        BufferCurrent                                             { fg="#d4d4d4", bg="#1e1e1e", }, -- BufferCurrent  xxx guifg=#d4d4d4 guibg=#1e1e1e
        BufferCurrentIndex                                        { fg="#d4d4d4", bg="#1e1e1e", }, -- BufferCurrentIndex xxx guifg=#d4d4d4 guibg=#1e1e1e
        BufferCurrentMod                                          { fg="#d7ba7d", bg="#1e1e1e", }, -- BufferCurrentMod xxx guifg=#d7ba7d guibg=#1e1e1e
        BufferCurrentSign                                         { fg="#d4d4d4", bg="#1e1e1e", }, -- BufferCurrentSign xxx guifg=#d4d4d4 guibg=#1e1e1e
        BufferCurrentTarget                                       { fg="#f44747", bg="#1e1e1e", }, -- BufferCurrentTarget xxx guifg=#f44747 guibg=#1e1e1e
        BufferVisible                                             { fg="#808080", bg="#1e1e1e", }, -- BufferVisible  xxx guifg=#808080 guibg=#1e1e1e
        BufferVisibleIndex                                        { fg="#808080", bg="#1e1e1e", }, -- BufferVisibleIndex xxx guifg=#808080 guibg=#1e1e1e
        BufferVisibleMod                                          { fg="#d7ba7d", bg="#1e1e1e", }, -- BufferVisibleMod xxx guifg=#d7ba7d guibg=#1e1e1e
        BufferVisibleSign                                         { fg="#808080", bg="#1e1e1e", }, -- BufferVisibleSign xxx guifg=#808080 guibg=#1e1e1e
        BufferVisibleTarget                                       { fg="#f44747", bg="#1e1e1e", }, -- BufferVisibleTarget xxx guifg=#f44747 guibg=#1e1e1e
        BufferInactive                                            { fg="#808080", bg="#2d2d2d", }, -- BufferInactive xxx guifg=#808080 guibg=#2d2d2d
        BufferInactiveIndex                                       { fg="#808080", bg="#2d2d2d", }, -- BufferInactiveIndex xxx guifg=#808080 guibg=#2d2d2d
        BufferInactiveMod                                         { fg="#d7ba7d", bg="#2d2d2d", }, -- BufferInactiveMod xxx guifg=#d7ba7d guibg=#2d2d2d
        BufferInactiveSign                                        { fg="#808080", bg="#2d2d2d", }, -- BufferInactiveSign xxx guifg=#808080 guibg=#2d2d2d
        BufferInactiveTarget                                      { fg="#f44747", bg="#2d2d2d", }, -- BufferInactiveTarget xxx guifg=#f44747 guibg=#2d2d2d
        BufferTabpage                                             { fg="#d4d4d4", bg="#2d2d2d", }, -- BufferTabpage  xxx guifg=#d4d4d4 guibg=#2d2d2d
        BufferTabpageFill                                         { fg="#d4d4d4", bg="#2d2d2d", }, -- BufferTabpageFill xxx guifg=#d4d4d4 guibg=#2d2d2d
        BufferTabpages                                            { fg="#d4d4d4", bg="#2d2d2d", }, -- BufferTabpages xxx guifg=#d4d4d4 guibg=#2d2d2d
        BufferTabpagesFill                                        { fg="#d4d4d4", bg="#2d2d2d", }, -- BufferTabpagesFill xxx guifg=#d4d4d4 guibg=#2d2d2d
        IndentBlanklineContextChar                                { fg="#707070", gui="nocombine", }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#707070
        IndentBlanklineContextStart                               { sp="#707070", gui="underline,nocombine", }, -- IndentBlanklineContextStart xxx cterm=underline,nocombine gui=underline,nocombine guisp=#707070
        IndentBlanklineChar                                       { fg="#404040", gui="nocombine", }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#404040
        IndentBlanklineSpaceChar                                  { fg="#404040", gui="nocombine", }, -- IndentBlanklineSpaceChar xxx cterm=nocombine gui=nocombine guifg=#404040
        IndentBlanklineSpaceCharBlankline                         { fg="#404040", gui="nocombine", }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine gui=nocombine guifg=#404040
        NeotestAdapterName                                        { fg="#d4d4d4", gui="bold", }, -- NeotestAdapterName xxx cterm=bold gui=bold guifg=#d4d4d4
        NeotestDir                                                { fg="#569cd6", }, -- NeotestDir     xxx guifg=#569cd6
        NeotestExpandMarker                                       { fg="#51504f", }, -- NeotestExpandMarker xxx guifg=#51504f
        NeotestFailed                                             { fg="#f44747", }, -- NeotestFailed  xxx guifg=#f44747
        NeotestFile                                               { fg="#569cd6", }, -- NeotestFile    xxx guifg=#569cd6
        NeotestFocused                                            { gui="bold", }, -- NeotestFocused xxx cterm=bold gui=bold
        NeotestIndent                                             { fg="#51504f", }, -- NeotestIndent  xxx guifg=#51504f
        NeotestMarked                                             { fg="#d7ba7d", gui="bold", }, -- NeotestMarked  xxx cterm=bold gui=bold guifg=#d7ba7d
        NeotestNamespace                                          { fg="#c586c0", }, -- NeotestNamespace xxx guifg=#c586c0
        NeotestPassed                                             { fg="#4ec9b0", }, -- NeotestPassed  xxx guifg=#4ec9b0
        NeotestRunning                                            { fg="#ffd602", }, -- NeotestRunning xxx guifg=#ffd602
        NeotestSkipped                                            { fg="#569cd6", }, -- NeotestSkipped xxx guifg=#569cd6
        NeotestTarget                                             { fg="#d16969", }, -- NeotestTarget  xxx guifg=#d16969
        NeotestWatching                                           { fg="#ffd602", }, -- NeotestWatching xxx guifg=#ffd602
        NeotestWinSelect                                          { fg="#569cd6", gui="bold", }, -- NeotestWinSelect xxx cterm=bold gui=bold guifg=#569cd6
        LspReferenceText                                          { bg="#343b41", }, -- LspReferenceText xxx guibg=#343b41
        LspReferenceRead                                          { bg="#343b41", }, -- LspReferenceRead xxx guibg=#343b41
        LspReferenceWrite                                         { bg="#343b41", }, -- LspReferenceWrite xxx guibg=#343b41
        CocHighlightText                                          { bg="#343b41", }, -- CocHighlightText xxx guibg=#343b41
        CocHighlightRead                                          { bg="#343b41", }, -- CocHighlightRead xxx guibg=#343b41
        CocHighlightWrite                                         { bg="#343b41", }, -- CocHighlightWrite xxx guibg=#343b41
        CmpItemKindVariable                                       { fg="#9cdcfe", }, -- CmpItemKindVariable xxx guifg=#9cdcfe
        CmpItemKindInterface                                      { fg="#9cdcfe", }, -- CmpItemKindInterface xxx guifg=#9cdcfe
        CmpItemKindText                                           { fg="#9cdcfe", }, -- CmpItemKindText xxx guifg=#9cdcfe
        CmpItemKindFunction                                       { fg="#c586c0", }, -- CmpItemKindFunction xxx guifg=#c586c0
        CmpItemKindMethod                                         { fg="#c586c0", }, -- CmpItemKindMethod xxx guifg=#c586c0
        CmpItemKindKeyword                                        { fg="#d4d4d4", }, -- CmpItemKindKeyword xxx guifg=#d4d4d4
        CmpItemKindModule                                         { CmpItemKindKeyword }, -- CmpItemKindModule xxx links to CmpItemKindKeyword
        CmpItemKindProperty                                       { fg="#d4d4d4", }, -- CmpItemKindProperty xxx guifg=#d4d4d4
        CmpItemKindUnit                                           { fg="#d4d4d4", }, -- CmpItemKindUnit xxx guifg=#d4d4d4
        CmpItemKindConstructor                                    { fg="#f28b25", }, -- CmpItemKindConstructor xxx guifg=#f28b25
        CmpItemKindClass                                          { CmpItemKindConstructor }, -- CmpItemKindClass xxx links to CmpItemKindConstructor
        CmpItemMenu                                               { fg="#bbbbbb", }, -- CmpItemMenu    xxx guifg=#bbbbbb
        CmpItemAbbr                                               { fg="#d4d4d4", }, -- CmpItemAbbr    xxx guifg=#d4d4d4
        CmpItemAbbrDeprecated                                     { fg="#51504f", gui="strikethrough", bg="#272727", }, -- CmpItemAbbrDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#51504f guibg=#272727
        CmpItemAbbrMatch                                          { fg="#18a2fe", gui="bold", }, -- CmpItemAbbrMatch xxx cterm=bold gui=bold guifg=#18a2fe
        CmpItemAbbrMatchFuzzy                                     { fg="#18a2fe", gui="bold", }, -- CmpItemAbbrMatchFuzzy xxx cterm=bold gui=bold guifg=#18a2fe
        DapUIBreakpointsCurrentLine                               { fg="#4ec9b0", gui="bold", }, -- DapUIBreakpointsCurrentLine xxx cterm=bold gui=bold guifg=#4ec9b0
        DapUIBreakpointsDisabledLine                              { fg="#51504f", }, -- DapUIBreakpointsDisabledLine xxx guifg=#51504f
        DapUIBreakpointsInfo                                      { fg="#4ec9b0", }, -- DapUIBreakpointsInfo xxx guifg=#4ec9b0
        DapUIBreakpointsLine                                      { fg="#c586c0", }, -- DapUIBreakpointsLine xxx guifg=#c586c0
        DapUIBreakpointsPath                                      { fg="#c586c0", }, -- DapUIBreakpointsPath xxx guifg=#c586c0
        DapUICurrentFrameName                                     { fg="#4ec9b0", gui="bold", }, -- DapUICurrentFrameName xxx cterm=bold gui=bold guifg=#4ec9b0
        DapUIDecoration                                           { fg="#c586c0", }, -- DapUIDecoration xxx guifg=#c586c0
        DapUIFloatBorder                                          { fg="#c586c0", }, -- DapUIFloatBorder xxx guifg=#c586c0
        DapUILineNumber                                           { fg="#c586c0", }, -- DapUILineNumber xxx guifg=#c586c0
        DapUIModifiedValue                                        { fg="#c586c0", gui="bold", }, -- DapUIModifiedValue xxx cterm=bold gui=bold guifg=#c586c0
        DapUIPlayPause                                            { fg="#4ec9b0", }, -- DapUIPlayPause xxx guifg=#4ec9b0
        DapUIPlayPauseNC                                          { fg="#4ec9b0", }, -- DapUIPlayPauseNC xxx guifg=#4ec9b0
        DapUIRestart                                              { fg="#4ec9b0", }, -- DapUIRestart   xxx guifg=#4ec9b0
        DapUIRestartNC                                            { fg="#4ec9b0", }, -- DapUIRestartNC xxx guifg=#4ec9b0
        DapUIScope                                                { fg="#c586c0", }, -- DapUIScope     xxx guifg=#c586c0
        DapUISource                                               { fg="#18a2fe", }, -- DapUISource    xxx guifg=#18a2fe
        DapUIStepBack                                             { fg="#c586c0", }, -- DapUIStepBack  xxx guifg=#c586c0
        DapUIStepBackNC                                           { fg="#c586c0", }, -- DapUIStepBackNC xxx guifg=#c586c0
        DapUIStepInto                                             { fg="#c586c0", }, -- DapUIStepInto  xxx guifg=#c586c0
        DapUIStepIntoNC                                           { fg="#c586c0", }, -- DapUIStepIntoNC xxx guifg=#c586c0
        DapUIStepOut                                              { fg="#c586c0", }, -- DapUIStepOut   xxx guifg=#c586c0
        DapUIStepOutNC                                            { fg="#c586c0", }, -- DapUIStepOutNC xxx guifg=#c586c0
        DapUIStepOver                                             { fg="#c586c0", }, -- DapUIStepOver  xxx guifg=#c586c0
        DapUIStepOverNC                                           { fg="#c586c0", }, -- DapUIStepOverNC xxx guifg=#c586c0
        DapUIStop                                                 { fg="#f44747", }, -- DapUIStop      xxx guifg=#f44747
        DapUIStopNC                                               { fg="#f44747", }, -- DapUIStopNC    xxx guifg=#f44747
        DapUIStoppedThread                                        { fg="#c586c0", }, -- DapUIStoppedThread xxx guifg=#c586c0
        DapUIThread                                               { fg="#4ec9b0", }, -- DapUIThread    xxx guifg=#4ec9b0
        DapUIType                                                 { fg="#c586c0", }, -- DapUIType      xxx guifg=#c586c0
        DapUIUnavailable                                          { fg="#51504f", }, -- DapUIUnavailable xxx guifg=#51504f
        DapUIUnavailableNC                                        { fg="#51504f", }, -- DapUIUnavailableNC xxx guifg=#51504f
        DapUIWatchesEmpty                                         { fg="#51504f", }, -- DapUIWatchesEmpty xxx guifg=#51504f
        DapUIWatchesError                                         { fg="#f44747", }, -- DapUIWatchesError xxx guifg=#f44747
        DapUIWatchesValue                                         { fg="#4ec9b0", }, -- DapUIWatchesValue xxx guifg=#4ec9b0
        DapUIWinSelect                                            { fg="#c586c0", gui="bold", }, -- DapUIWinSelect xxx cterm=bold gui=bold guifg=#c586c0
        DashboardHeader                                           { fg="#569cd6", }, -- DashboardHeader xxx guifg=#569cd6
        DashboardDesc                                             { fg="#d7ba7d", }, -- DashboardDesc  xxx guifg=#d7ba7d
        DashboardIcon                                             { fg="#d7ba7d", }, -- DashboardIcon  xxx guifg=#d7ba7d
        DashboardShortCut                                         { fg="#c586c0", }, -- DashboardShortCut xxx guifg=#c586c0
        DashboardFooter                                           { fg="#569cd6", gui="italic", }, -- DashboardFooter xxx cterm=italic gui=italic guifg=#569cd6
        illuminatedWord                                           { bg="#343b41", }, -- illuminatedWord xxx guibg=#343b41
        illuminatedCurWord                                        { bg="#343b41", }, -- illuminatedCurWord xxx guibg=#343b41
        IlluminatedWordText                                       { bg="#343b41", }, -- IlluminatedWordText xxx guibg=#343b41
        IlluminatedWordRead                                       { bg="#343b41", }, -- IlluminatedWordRead xxx guibg=#343b41
        IlluminatedWordWrite                                      { bg="#343b41", }, -- IlluminatedWordWrite xxx guibg=#343b41
        NeogitDiffAdd                                             { fg="#81b88b", bg="#373d29", }, -- NeogitDiffAdd  xxx guifg=#81b88b guibg=#373d29
        NeogitDiffAddHighlight                                    { fg="#81b88b", bg="#4b5632", }, -- NeogitDiffAddHighlight xxx guifg=#81b88b guibg=#4b5632
        NeogitDiffContext                                         { fg="#bbbbbb", bg="#252526", }, -- NeogitDiffContext xxx guifg=#bbbbbb guibg=#252526
        NeogitDiffContextHighlight                                { fg="#bbbbbb", bg="#373737", }, -- NeogitDiffContextHighlight xxx guifg=#bbbbbb guibg=#373737
        NeogitDiffDelete                                          { fg="#c74e39", bg="#4b1818", }, -- NeogitDiffDelete xxx guifg=#c74e39 guibg=#4b1818
        NeogitDiffDeleteHighlight                                 { fg="#c74e39", bg="#6f1313", }, -- NeogitDiffDeleteHighlight xxx guifg=#c74e39 guibg=#6f1313
        NeogitDiffHeader                                          { fg="#898989", bg="#1e1e1e", }, -- NeogitDiffHeader xxx guifg=#898989 guibg=#1e1e1e
        NeogitDiffHeaderHighlight                                 { fg="#898989", bg="#1e1e1e", }, -- NeogitDiffHeaderHighlight xxx guifg=#898989 guibg=#1e1e1e
        NeogitHunkHeader                                          { fg="#e2c08d", bg="#252526", }, -- NeogitHunkHeader xxx guifg=#e2c08d guibg=#252526
        NeogitHunkHeaderHighlight                                 { fg="#e2c08d", bg="#373737", }, -- NeogitHunkHeaderHighlight xxx guifg=#e2c08d guibg=#373737
        NvimTreeFolderIcon                                        { fg="#569cd6", }, -- NvimTreeFolderIcon xxx guifg=#569cd6
        NvimTreeBookmarkIcon                                      { NvimTreeFolderIcon }, -- NvimTreeBookmarkIcon xxx links to NvimTreeFolderIcon
        NvimTreeOpenedFolderIcon                                  { NvimTreeFolderIcon }, -- NvimTreeOpenedFolderIcon xxx links to NvimTreeFolderIcon
        NvimTreeClosedFolderIcon                                  { NvimTreeFolderIcon }, -- NvimTreeClosedFolderIcon xxx links to NvimTreeFolderIcon
        NvimTreeIndentMarker                                      { fg="#5a5a5a", }, -- NvimTreeIndentMarker xxx guifg=#5a5a5a
        NvimTreeFolderArrowClosed                                 { NvimTreeIndentMarker }, -- NvimTreeFolderArrowClosed xxx links to NvimTreeIndentMarker
        NvimTreeFolderArrowOpen                                   { NvimTreeIndentMarker }, -- NvimTreeFolderArrowOpen xxx links to NvimTreeIndentMarker
        LspFloatWinNormal                                         { fg="#d4d4d4", }, -- LspFloatWinNormal xxx guifg=#d4d4d4
        LspFloatWinBorder                                         { fg="#5a5a5a", }, -- LspFloatWinBorder xxx guifg=#5a5a5a
        LspInfoBorder                                             { fg="#5a5a5a", }, -- LspInfoBorder  xxx guifg=#5a5a5a
        LspSagaHoverBorder                                        { fg="#5a5a5a", }, -- LspSagaHoverBorder xxx guifg=#5a5a5a
        LspSagaSignatureHelpBorder                                { fg="#5a5a5a", }, -- LspSagaSignatureHelpBorder xxx guifg=#5a5a5a
        LspSagaCodeActionBorder                                   { fg="#5a5a5a", }, -- LspSagaCodeActionBorder xxx guifg=#5a5a5a
        LspSagaDefPreviewBorder                                   { fg="#5a5a5a", }, -- LspSagaDefPreviewBorder xxx guifg=#5a5a5a
        LspLinesDiagBorder                                        { fg="#5a5a5a", }, -- LspLinesDiagBorder xxx guifg=#5a5a5a
        LspSagaRenameBorder                                       { fg="#5a5a5a", }, -- LspSagaRenameBorder xxx guifg=#5a5a5a
        LspSagaBorderTitle                                        { fg="#51504f", }, -- LspSagaBorderTitle xxx guifg=#51504f
        LSPSagaDiagnosticTruncateLine                             { fg="#5a5a5a", }, -- LSPSagaDiagnosticTruncateLine xxx guifg=#5a5a5a
        LspSagaDiagnosticBorder                                   { fg="#5a5a5a", }, -- LspSagaDiagnosticBorder xxx guifg=#5a5a5a
        LspSagaShTruncateLine                                     { fg="#5a5a5a", }, -- LspSagaShTruncateLine xxx guifg=#5a5a5a
        LspSagaDocTruncateLine                                    { fg="#5a5a5a", }, -- LspSagaDocTruncateLine xxx guifg=#5a5a5a
        LspSagaLspFinderBorder                                    { fg="#5a5a5a", }, -- LspSagaLspFinderBorder xxx guifg=#5a5a5a
        TelescopePromptBorder                                     { fg="#5a5a5a", }, -- TelescopePromptBorder xxx guifg=#5a5a5a
        TelescopeResultsBorder                                    { fg="#5a5a5a", }, -- TelescopeResultsBorder xxx guifg=#5a5a5a
        TelescopePreviewBorder                                    { fg="#5a5a5a", }, -- TelescopePreviewBorder xxx guifg=#5a5a5a
        TelescopeNormal                                           { fg="#d4d4d4", }, -- TelescopeNormal xxx guifg=#d4d4d4
        TelescopePreviewNormal                                    { TelescopeNormal }, -- TelescopePreviewNormal xxx links to TelescopeNormal
        TelescopeBorder                                           { TelescopeNormal }, -- TelescopeBorder xxx links to TelescopeNormal
        TelescopeResultsNormal                                    { TelescopeNormal }, -- TelescopeResultsNormal xxx links to TelescopeNormal
        TelescopePromptNormal                                     { TelescopeNormal }, -- TelescopePromptNormal xxx links to TelescopeNormal
        TelescopeSelection                                        { fg="#d4d4d4", bg="#004b72", }, -- TelescopeSelection xxx guifg=#d4d4d4 guibg=#004b72
        TelescopeSelectionCaret                                   { TelescopeSelection }, -- TelescopeSelectionCaret xxx links to TelescopeSelection
        TelescopeMultiSelection                                   { fg="#d4d4d4", bg="#004b72", }, -- TelescopeMultiSelection xxx guifg=#d4d4d4 guibg=#004b72
        TelescopeMatching                                         { fg="#18a2fe", gui="bold", }, -- TelescopeMatching xxx cterm=bold gui=bold guifg=#18a2fe
        TelescopePromptPrefix                                     { fg="#d4d4d4", }, -- TelescopePromptPrefix xxx guifg=#d4d4d4
        debugPC                                                   { bg="#4c4c19", }, -- debugPC        xxx guibg=#4c4c19
        FocusedSymbol                                             { fg="#ffffff", bg="#084671", }, -- FocusedSymbol  xxx guifg=#ffffff guibg=#084671
        SymbolsOutlineConnector                                   { fg="#5a5a5a", }, -- SymbolsOutlineConnector xxx guifg=#5a5a5a
        GitSelected                                               { fg="#8cf8f7", gui="italic", }, -- GitSelected    xxx gui=italic guifg=#8cf8f7
        GitSymbol                                                 { fg="#bbbbbb", }, -- GitSymbol      xxx guifg=#bbbbbb
        GitWordDelete                                             { bg="#a61c1c", }, -- GitWordDelete  xxx guibg=#a61c1c
        GitWordAdd                                                { bg="#70814b", }, -- GitWordAdd     xxx guibg=#70814b
        GitComment                                                { fg="#6a9955", }, -- GitComment     xxx guifg=#6a9955
        GitLineNr                                                 { fg="#525252", bg="#1b1b1b", }, -- GitLineNr      xxx guifg=#525252 guibg=#1b1b1b
        GitBorder                                                 { fg="#555555", bg="#1c1c1c", }, -- GitBorder      xxx guifg=#555555 guibg=#1c1c1c
        GitFooter                                                 { fg="#d4d4d4", bg="#232323", }, -- GitFooter      xxx guifg=#d4d4d4 guibg=#232323
        GitHeader                                                 { fg="#d4d4d4", bg="#232323", }, -- GitHeader      xxx guifg=#d4d4d4 guibg=#232323
        GitAppBar                                                 { fg="#d4d4d4", bg="#232323", }, -- GitAppBar      xxx guifg=#d4d4d4 guibg=#232323
        GitBackground                                             { fg="#d4d4d4", bg="#1b1b1b", }, -- GitBackground  xxx guifg=#d4d4d4 guibg=#1b1b1b
        lualine_b_normal                                          { fg="#ffffff", bg="#454545", }, -- lualine_b_normal xxx guifg=#ffffff guibg=#454545
        lualine_c_normal                                          { fg="#ffffff", bg="#252526", }, -- lualine_c_normal xxx guifg=#ffffff guibg=#252526
        lualine_a_normal                                          { fg="#ffffff", bg="#007acc", }, -- lualine_a_normal xxx guifg=#ffffff guibg=#007acc
        lualine_a_insert                                          { fg="#ffffff", bg="#cc6633", }, -- lualine_a_insert xxx guifg=#ffffff guibg=#cc6633
        lualine_b_inactive                                        { fg="#bfc5d6", bg="#1d1d1d", }, -- lualine_b_inactive xxx guifg=#bfc5d6 guibg=#1d1d1d
        lualine_c_inactive                                        { fg="#bfc5d6", bg="#1d1d1d", }, -- lualine_c_inactive xxx guifg=#bfc5d6 guibg=#1d1d1d
        lualine_a_inactive                                        { fg="#bfc5d6", bg="#1d1d1d", }, -- lualine_a_inactive xxx guifg=#bfc5d6 guibg=#1d1d1d
        lualine_a_replace                                         { fg="#ffffff", bg="#c586c0", }, -- lualine_a_replace xxx guifg=#ffffff guibg=#c586c0
        lualine_a_visual                                          { fg="#ffffff", bg="#68217a", }, -- lualine_a_visual xxx guifg=#ffffff guibg=#68217a
        lualine_b_diff_added_normal                               { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_normal xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_insert                               { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_insert xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_visual                               { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_visual xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_replace                              { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_replace xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_command                              { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_command xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_terminal                             { fg="#6a9955", bg="#454545", }, -- lualine_b_diff_added_terminal xxx guifg=#6a9955 guibg=#454545
        lualine_b_diff_added_inactive                             { fg="#6a9955", bg="#1d1d1d", }, -- lualine_b_diff_added_inactive xxx guifg=#6a9955 guibg=#1d1d1d
        lualine_b_diff_modified_normal                            { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_normal xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_insert                            { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_insert xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_visual                            { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_visual xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_replace                           { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_replace xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_command                           { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_command xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_terminal                          { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diff_modified_terminal xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diff_modified_inactive                          { fg="#dcdcaa", bg="#1d1d1d", }, -- lualine_b_diff_modified_inactive xxx guifg=#dcdcaa guibg=#1d1d1d
        lualine_b_diff_removed_normal                             { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_normal xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_insert                             { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_insert xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_visual                             { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_visual xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_replace                            { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_replace xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_command                            { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_command xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_terminal                           { fg="#f44747", bg="#454545", }, -- lualine_b_diff_removed_terminal xxx guifg=#f44747 guibg=#454545
        lualine_b_diff_removed_inactive                           { fg="#f44747", bg="#1d1d1d", }, -- lualine_b_diff_removed_inactive xxx guifg=#f44747 guibg=#1d1d1d
        lualine_b_diagnostics_error_normal                        { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_normal xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_insert                        { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_insert xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_visual                        { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_visual xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_replace                       { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_replace xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_command                       { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_command xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_terminal                      { fg="#f44747", bg="#454545", }, -- lualine_b_diagnostics_error_terminal xxx guifg=#f44747 guibg=#454545
        lualine_b_diagnostics_error_inactive                      { fg="#f44747", bg="#1d1d1d", }, -- lualine_b_diagnostics_error_inactive xxx guifg=#f44747 guibg=#1d1d1d
        lualine_b_diagnostics_warn_normal                         { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_normal xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_insert                         { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_insert xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_visual                         { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_visual xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_replace                        { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_replace xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_command                        { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_command xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_terminal                       { fg="#dcdcaa", bg="#454545", }, -- lualine_b_diagnostics_warn_terminal xxx guifg=#dcdcaa guibg=#454545
        lualine_b_diagnostics_warn_inactive                       { fg="#dcdcaa", bg="#1d1d1d", }, -- lualine_b_diagnostics_warn_inactive xxx guifg=#dcdcaa guibg=#1d1d1d
        lualine_b_diagnostics_info_normal                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_normal xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_insert                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_insert xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_visual                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_visual xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_replace                        { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_replace xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_command                        { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_command xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_terminal                       { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_info_terminal xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_info_inactive                       { fg="#569cd6", bg="#1d1d1d", }, -- lualine_b_diagnostics_info_inactive xxx guifg=#569cd6 guibg=#1d1d1d
        lualine_b_diagnostics_hint_normal                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_normal xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_insert                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_insert xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_visual                         { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_visual xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_replace                        { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_replace xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_command                        { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_command xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_terminal                       { fg="#569cd6", bg="#454545", }, -- lualine_b_diagnostics_hint_terminal xxx guifg=#569cd6 guibg=#454545
        lualine_b_diagnostics_hint_inactive                       { fg="#569cd6", bg="#1d1d1d", }, -- lualine_b_diagnostics_hint_inactive xxx guifg=#569cd6 guibg=#1d1d1d
        NvimTreeWindowPicker                                      { fg="#ededed", gui="bold", bg="#4493c8", }, -- NvimTreeWindowPicker xxx ctermfg=15 ctermbg=14 gui=bold guifg=#ededed guibg=#4493c8
        DevIconDefault                                            { fg="#6d8086", }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
        DevIconJava                                               { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
        DevIconBibTeX                                             { fg="#cbcb41", }, -- DevIconBibTeX  xxx ctermfg=185 guifg=#cbcb41
        DevIconMpp                                                { fg="#519aba", }, -- DevIconMpp     xxx ctermfg=74 guifg=#519aba
        DevIconOpenBSD                                            { fg="#000000", }, -- DevIconOpenBSD xxx ctermfg=16 guifg=#000000
        DevIconSh                                                 { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
        DevIconBzl                                                { fg="#89e051", }, -- DevIconBzl     xxx ctermfg=113 guifg=#89e051
        DevIconBash                                               { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
        DevIconDockerfile                                         { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
        DevIconAwk                                                { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
        DevIconHurl                                               { fg="#ff0288", }, -- DevIconHurl    xxx ctermfg=198 guifg=#ff0288
        DevIconSql                                                { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
        DevIconRazorPage                                          { fg="#512bd4", }, -- DevIconRazorPage xxx ctermfg=56 guifg=#512bd4
        DevIconMixLock                                            { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
        DevIconKotlinScript                                       { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
        DevIconCss                                                { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=75 guifg=#42a5f5
        DevIconFavicon                                            { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
        DevIconLock                                               { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
        DevIconDiff                                               { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=239 guifg=#41535b
        DevIconGraphQL                                            { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
        DevIconScss                                               { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
        DevIconVim                                                { fg="#019833", }, -- DevIconVim     xxx ctermfg=28 guifg=#019833
        DevIconSettingsJson                                       { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
        DevIconScala                                              { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
        DevIconNPMrc                                              { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
        DevIconIxx                                                { fg="#519aba", }, -- DevIconIxx     xxx ctermfg=74 guifg=#519aba
        DevIconLuaurc                                             { fg="#00a2ff", }, -- DevIconLuaurc  xxx ctermfg=75 guifg=#00a2ff
        DevIconGitlabCI                                           { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
        DevIconHuff                                               { fg="#4242c7", }, -- DevIconHuff    xxx ctermfg=56 guifg=#4242c7
        DevIconLua                                                { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
        DevIconElementary                                         { fg="#5890c2", }, -- DevIconElementary xxx ctermfg=67 guifg=#5890c2
        DevIconDevuan                                             { fg="#404a52", }, -- DevIconDevuan  xxx ctermfg=238 guifg=#404a52
        DevIconEditorConfig                                       { fg="#ffffff", }, -- DevIconEditorConfig xxx ctermfg=231 guifg=#ffffff
        DevIconDeepin                                             { fg="#2ca7f8", }, -- DevIconDeepin  xxx ctermfg=39 guifg=#2ca7f8
        DevIconDsStore                                            { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=239 guifg=#41535b
        DevIconDebian                                             { fg="#a80030", }, -- DevIconDebian  xxx ctermfg=88 guifg=#a80030
        DevIconFs                                                 { fg="#519aba", }, -- DevIconFs      xxx ctermfg=74 guifg=#519aba
        DevIconBudgie                                             { fg="#ffffff", }, -- DevIconBudgie  xxx ctermfg=231 guifg=#ffffff
        DevIconArtix                                              { fg="#41b4d7", }, -- DevIconArtix   xxx ctermfg=38 guifg=#41b4d7
        DevIconExe                                                { fg="#9f0500", }, -- DevIconExe     xxx ctermfg=124 guifg=#9f0500
        DevIconAOSC                                               { fg="#000000", }, -- DevIconAOSC    xxx ctermfg=16 guifg=#000000
        DevIconEmbeddedOpenTypeFont                               { fg="#ececec", }, -- DevIconEmbeddedOpenTypeFont xxx ctermfg=255 guifg=#ececec
        DevIconAlpine                                             { fg="#0d597f", }, -- DevIconAlpine  xxx ctermfg=24 guifg=#0d597f
        DevIconTxt                                                { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
        DevIconElf                                                { fg="#9f0500", }, -- DevIconElf     xxx ctermfg=124 guifg=#9f0500
        DevIconSystemVerilog                                      { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
        DevIconTor                                                { fg="#519aba", }, -- DevIconTor     xxx ctermfg=74 guifg=#519aba
        DevIconLiquid                                             { fg="#95bf47", }, -- DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
        DevIconApple                                              { fg="#a2aaad", }, -- DevIconApple   xxx ctermfg=248 guifg=#a2aaad
        DevIconTempl                                              { fg="#dbbd30", }, -- DevIconTempl   xxx ctermfg=178 guifg=#dbbd30
        DevIconC                                                  { fg="#599eff", }, -- DevIconC       xxx ctermfg=111 guifg=#599eff
        DevIconZig                                                { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=172 guifg=#f69a1b
        DevIconPrisma                                             { fg="#ffffff", }, -- DevIconPrisma  xxx ctermfg=231 guifg=#ffffff
        DevIconMOV                                                { fg="#fd971f", }, -- DevIconMOV     xxx ctermfg=208 guifg=#fd971f
        DevIconMotoko                                             { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
        DevIconDb                                                 { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
        DevIconMint                                               { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
        DevIconM4V                                                { fg="#fd971f", }, -- DevIconM4V     xxx ctermfg=208 guifg=#fd971f
        DevIconM4A                                                { fg="#66d8ef", }, -- DevIconM4A     xxx ctermfg=45 guifg=#66d8ef
        DevIconMaterial                                           { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=163 guifg=#b83998
        DevIconLicense                                            { fg="#d0bf41", }, -- DevIconLicense xxx ctermfg=185 guifg=#d0bf41
        DevIconLeex                                               { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
        DevIconVerilog                                            { fg="#019833", }, -- DevIconVerilog xxx ctermfg=28 guifg=#019833
        DevIconJpeg                                               { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
        DevIconImportConfiguration                                { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
        DevIconIco                                                { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
        DevIconHaxe                                               { fg="#ea8220", }, -- DevIconHaxe    xxx ctermfg=208 guifg=#ea8220
        DevIconGruntfile                                          { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=166 guifg=#e37933
        DevIconD                                                  { fg="#427819", }, -- DevIconD       xxx ctermfg=28 guifg=#427819
        DevIconFsharp                                             { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=74 guifg=#519aba
        DevIconGitAttributes                                      { fg="#41535b", }, -- DevIconGitAttributes xxx ctermfg=239 guifg=#41535b
        DevIconGitCommit                                          { fg="#41535b", }, -- DevIconGitCommit xxx ctermfg=239 guifg=#41535b
        DevIconFsx                                                { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=74 guifg=#519aba
        DevIconFsscript                                           { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=74 guifg=#519aba
        DevIconZshrc                                              { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
        DevIconNushell                                            { fg="#3aa675", }, -- DevIconNushell xxx ctermfg=36 guifg=#3aa675
        DevIconFlac                                               { fg="#66d8ef", }, -- DevIconFlac    xxx ctermfg=45 guifg=#66d8ef
        DevIconBinaryGLTF                                         { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
        DevIconEpp                                                { fg="#ffa61a", }, -- DevIconEpp     xxx ctermfg=214 guifg=#ffa61a
        DevIconOrgMode                                            { fg="#77aa99", }, -- DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
        DevIconDropbox                                            { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
        DevIconDrools                                             { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
        DevIconCson                                               { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
        DevIconCrystal                                            { fg="#c8c8c8", }, -- DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
        DevIconBmp                                                { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
        DevIconConfigRu                                           { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
        DevIconGulpfile                                           { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
        DevIconFortran                                            { fg="#734f96", }, -- DevIconFortran xxx ctermfg=97 guifg=#734f96
        DevIconGitLogo                                            { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
        DevIconDocx                                               { fg="#185abd", }, -- DevIconDocx    xxx ctermfg=26 guifg=#185abd
        DevIconCheckhealth                                        { fg="#75b4fb", }, -- DevIconCheckhealth xxx ctermfg=75 guifg=#75b4fb
        DevIconAvif                                               { fg="#a074c4", }, -- DevIconAvif    xxx ctermfg=140 guifg=#a074c4
        DevIconPpt                                                { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=160 guifg=#cb4a32
        DevIconPsScriptfile                                       { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
        DevIconPsd                                                { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=74 guifg=#519aba
        DevIconPyd                                                { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=222 guifg=#ffe291
        DevIconWasm                                               { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
        DevIconTerminal                                           { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=34 guifg=#31b53e
        DevIconSuo                                                { fg="#e37933", }, -- DevIconSuo     xxx ctermfg=166 guifg=#e37933
        DevIconSln                                                { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
        DevIconSlim                                               { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=196 guifg=#e34c26
        DevIconRproj                                              { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=29 guifg=#358a5b
        DevIconRlib                                               { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=216 guifg=#dea584
        DevIconPyo                                                { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=222 guifg=#ffe291
        DevIconPyc                                                { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=222 guifg=#ffe291
        DevIconBazel                                              { fg="#89e051", }, -- DevIconBazel   xxx ctermfg=113 guifg=#89e051
        DevIconPsScriptModulefile                                 { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
        DevIconPsManifestfile                                     { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
        DevIconProcfile                                           { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
        DevIconPng                                                { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
        DevIconPdf                                                { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
        DevIconOpenTypeFont                                       { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
        DevIconOPUS                                               { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
        DevIconPsb                                                { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=74 guifg=#519aba
        DevIconStyl                                               { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=113 guifg=#8dc149
        DevIconWebm                                               { fg="#fd971f", }, -- DevIconWebm    xxx ctermfg=208 guifg=#fd971f
        DevIconAppleScript                                        { fg="#6d8085", }, -- DevIconAppleScript xxx ctermfg=66 guifg=#6d8085
        DevIconXls                                                { fg="#207245", }, -- DevIconXls     xxx ctermfg=29 guifg=#207245
        DevIconXlsx                                               { fg="#207245", }, -- DevIconXlsx    xxx ctermfg=29 guifg=#207245
        DevIconGemfile                                            { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
        DevIconXcPlayground                                       { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
        DevIconWebpack                                            { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=74 guifg=#519aba
        DevIconWebp                                               { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
        DevIconWav                                                { fg="#66d8ef", }, -- DevIconWav     xxx ctermfg=45 guifg=#66d8ef
        DevIconOgg                                                { fg="#66d8ef", }, -- DevIconOgg     xxx ctermfg=45 guifg=#66d8ef
        DevIconMp4                                                { fg="#fd971f", }, -- DevIconMp4     xxx ctermfg=208 guifg=#fd971f
        DevIconZigObjectNotation                                  { fg="#f69a1b", }, -- DevIconZigObjectNotation xxx ctermfg=172 guifg=#f69a1b
        DevIconTSConfig                                           { fg="#519aba", }, -- DevIconTSConfig xxx ctermfg=74 guifg=#519aba
        DevIconHtml                                               { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=196 guifg=#e44d26
        DevIconTailwindConfig                                     { fg="#20c2e3", }, -- DevIconTailwindConfig xxx ctermfg=45 guifg=#20c2e3
        DevIconPhp                                                { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
        DevIconZorin                                              { fg="#14a1e8", }, -- DevIconZorin   xxx ctermfg=39 guifg=#14a1e8
        DevIconSvelte                                             { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
        DevIconVue                                                { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=113 guifg=#8dc149
        DevIconXml                                                { fg="#e37933", }, -- DevIconXml     xxx ctermfg=166 guifg=#e37933
        sym"DevIconPy.typed"                                      { fg="#ffbc03", }, -- DevIconPy.typed xxx ctermfg=214 guifg=#ffbc03
        DevIconPackageLockJson                                    { fg="#7a0d21", }, -- DevIconPackageLockJson xxx ctermfg=52 guifg=#7a0d21
        DevIconSolus                                              { fg="#4b5163", }, -- DevIconSolus   xxx ctermfg=239 guifg=#4b5163
        DevIconPackageJson                                        { fg="#e8274b", }, -- DevIconPackageJson xxx ctermfg=197 guifg=#e8274b
        DevIconVoid                                               { fg="#295340", }, -- DevIconVoid    xxx ctermfg=23 guifg=#295340
        DevIconSlackware                                          { fg="#475fa9", }, -- DevIconSlackware xxx ctermfg=61 guifg=#475fa9
        DevIconSabayon                                            { fg="#c6c6c6", }, -- DevIconSabayon xxx ctermfg=251 guifg=#c6c6c6
        DevIconConfiguration                                      { fg="#ececec", }, -- DevIconConfiguration xxx ctermfg=255 guifg=#ececec
        DevIconRmd                                                { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=74 guifg=#519aba
        DevIconRockyLinux                                         { fg="#0fb37d", }, -- DevIconRockyLinux xxx ctermfg=36 guifg=#0fb37d
        DevIconRedhat                                             { fg="#ee0000", }, -- DevIconRedhat  xxx ctermfg=196 guifg=#ee0000
        DevIconcuda                                               { fg="#89e051", }, -- DevIconcuda    xxx ctermfg=113 guifg=#89e051
        DevIconPyx                                                { fg="#5aa7e4", }, -- DevIconPyx     xxx ctermfg=39 guifg=#5aa7e4
        DevIconCPlusPlus                                          { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
        DevIconRake                                               { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
        DevIconWebmanifest                                        { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
        DevIconParrot                                             { fg="#000000", }, -- DevIconParrot  xxx ctermfg=16 guifg=#000000
        DevIconopenSUSE                                           { fg="#6fb424", }, -- DevIconopenSUSE xxx ctermfg=70 guifg=#6fb424
        DevIconCobol                                              { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
        DevIconVHDL                                               { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=28 guifg=#019833
        DevIconManjaro                                            { fg="#33b959", }, -- DevIconManjaro xxx ctermfg=35 guifg=#33b959
        DevIconMageia                                             { fg="#2397d4", }, -- DevIconMageia  xxx ctermfg=67 guifg=#2397d4
        DevIconTFVars                                             { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
        DevIconDesktopEntry                                       { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
        DevIconKali                                               { fg="#ffffff", }, -- DevIconKali    xxx ctermfg=231 guifg=#ffffff
        DevIconTerraform                                          { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
        DevIconIllumos                                            { fg="#ff430f", }, -- DevIconIllumos xxx ctermfg=196 guifg=#ff430f
        DevIconBat                                                { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=191 guifg=#c1f12e
        DevIconMdx                                                { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=74 guifg=#519aba
        DevIconHs                                                 { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
        DevIconGentoo                                             { fg="#b1abce", }, -- DevIconGentoo  xxx ctermfg=146 guifg=#b1abce
        DevIconKsh                                                { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
        DevIconFreeBSD                                            { fg="#c90f02", }, -- DevIconFreeBSD xxx ctermfg=160 guifg=#c90f02
        DevIconPm                                                 { fg="#519aba", }, -- DevIconPm      xxx ctermfg=74 guifg=#519aba
        DevIconPyi                                                { fg="#ffbc03", }, -- DevIconPyi     xxx ctermfg=214 guifg=#ffbc03
        DevIconFedora                                             { fg="#072a5e", }, -- DevIconFedora  xxx ctermfg=17 guifg=#072a5e
        DevIconXaml                                               { fg="#512bd4", }, -- DevIconXaml    xxx ctermfg=56 guifg=#512bd4
        DevIconVlang                                              { fg="#5d87bf", }, -- DevIconVlang   xxx ctermfg=67 guifg=#5d87bf
        DevIconEndeavour                                          { fg="#7b3db9", }, -- DevIconEndeavour xxx ctermfg=91 guifg=#7b3db9
        DevIconQuery                                              { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=107 guifg=#90a850
        DevIconEnv                                                { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=227 guifg=#faf743
        DevIconTrueTypeFont                                       { fg="#ececec", }, -- DevIconTrueTypeFont xxx ctermfg=255 guifg=#ececec
        DevIconGvimrc                                             { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=28 guifg=#019833
        DevIconPp                                                 { fg="#ffa61a", }, -- DevIconPp      xxx ctermfg=214 guifg=#ffa61a
        DevIconNim                                                { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
        DevIconClojureJS                                          { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=74 guifg=#519aba
        DevIconClojureC                                           { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=113 guifg=#8dc149
        DevIconR                                                  { fg="#2266ba", }, -- DevIconR       xxx ctermfg=25 guifg=#2266ba
        DevIconCPlusPlusModule                                    { fg="#f34b7d", }, -- DevIconCPlusPlusModule xxx ctermfg=204 guifg=#f34b7d
        DevIconSml                                                { fg="#e37933", }, -- DevIconSml     xxx ctermfg=166 guifg=#e37933
        DevIconScheme                                             { fg="#eeeeee", }, -- DevIconScheme  xxx ctermfg=255 guifg=#eeeeee
        DevIconMl                                                 { fg="#e37933", }, -- DevIconMl      xxx ctermfg=166 guifg=#e37933
        DevIconPackedResource                                     { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
        DevIconH                                                  { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
        DevIconTwig                                               { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=113 guifg=#8dc149
        DevIconHaml                                               { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
        DevIconCs                                                 { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
        DevIconLhs                                                { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
        DevIconWindows                                            { fg="#00a4ef", }, -- DevIconWindows xxx ctermfg=39 guifg=#00a4ef
        DevIconsbt                                                { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
        DevIconMp3                                                { fg="#66d8ef", }, -- DevIconMp3     xxx ctermfg=45 guifg=#66d8ef
        DevIconErl                                                { fg="#b83998", }, -- DevIconErl     xxx ctermfg=163 guifg=#b83998
        DevIconMkv                                                { fg="#fd971f", }, -- DevIconMkv     xxx ctermfg=208 guifg=#fd971f
        DevIconGif                                                { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
        DevIconMakefile                                           { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
        DevIconAlmalinux                                          { fg="#000000", }, -- DevIconAlmalinux xxx ctermfg=16 guifg=#000000
        DevIconVala                                               { fg="#7239b3", }, -- DevIconVala    xxx ctermfg=91 guifg=#7239b3
        DevIconPl                                                 { fg="#519aba", }, -- DevIconPl      xxx ctermfg=74 guifg=#519aba
        DevIconMli                                                { fg="#e37933", }, -- DevIconMli     xxx ctermfg=166 guifg=#e37933
        DevIconCp                                                 { fg="#519aba", }, -- DevIconCp      xxx ctermfg=74 guifg=#519aba
        DevIconGuix                                               { fg="#ffcc00", }, -- DevIconGuix    xxx ctermfg=220 guifg=#ffcc00
        DevIconNodeModules                                        { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
        DevIconCentos                                             { fg="#a2518d", }, -- DevIconCentos  xxx ctermfg=132 guifg=#a2518d
        DevIconMustache                                           { fg="#e37933", }, -- DevIconMustache xxx ctermfg=166 guifg=#e37933
        DevIconSass                                               { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
        DevIconUbuntu                                             { fg="#dd4814", }, -- DevIconUbuntu  xxx ctermfg=196 guifg=#dd4814
        DevIconcudah                                              { fg="#a074c4", }, -- DevIconcudah   xxx ctermfg=140 guifg=#a074c4
        DevIconCxx                                                { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=74 guifg=#519aba
        DevIconCsh                                                { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
        DevIconRakefile                                           { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
        DevIconClojure                                            { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=113 guifg=#8dc149
        DevIconVimrc                                              { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=28 guifg=#019833
        DevIconHpp                                                { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
        DevIconArch                                               { fg="#0f94d2", }, -- DevIconArch    xxx ctermfg=67 guifg=#0f94d2
        DevIconCSharpProject                                      { fg="#512bd4", }, -- DevIconCSharpProject xxx ctermfg=56 guifg=#512bd4
        DevIconGroovy                                             { fg="#4a687c", }, -- DevIconGroovy  xxx ctermfg=24 guifg=#4a687c
        DevIconPy                                                 { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=214 guifg=#ffbc03
        DevIconPop_OS                                             { fg="#48b9c7", }, -- DevIconPop_OS  xxx ctermfg=73 guifg=#48b9c7
        DevIconEdn                                                { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=74 guifg=#519aba
        DevIconMd                                                 { fg="#ffffff", }, -- DevIconMd      xxx ctermfg=231 guifg=#ffffff
        DevIconYaml                                               { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
        DevIconXul                                                { fg="#e37933", }, -- DevIconXul     xxx ctermfg=166 guifg=#e37933
        DevIconAi                                                 { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
        DevIconCjs                                                { fg="#f1f134", }, -- DevIconCjs     xxx ctermfg=227 guifg=#f1f134
        DevIconHeex                                               { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
        DevIconHxx                                                { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
        DevIconGDScript                                           { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
        DevIconNPMIgnore                                          { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
        DevIconarduino                                            { fg="#56b6c2", }, -- DevIconarduino xxx ctermfg=73 guifg=#56b6c2
        DevIconFsi                                                { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=74 guifg=#519aba
        DevIconEjs                                                { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
        DevIconFish                                               { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
        DevIconCpp                                                { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=74 guifg=#519aba
        DevIconLess                                               { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=54 guifg=#563d7c
        DevIconCts                                                { fg="#519aba", }, -- DevIconCts     xxx ctermfg=74 guifg=#519aba
        DevIconClojureDart                                        { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=74 guifg=#519aba
        DevIconErb                                                { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
        DevIconEx                                                 { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
        DevIconMjs                                                { fg="#f1f134", }, -- DevIconMjs     xxx ctermfg=227 guifg=#f1f134
        DevIconNix                                                { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
        DevIconReScriptInterface                                  { fg="#f55385", }, -- DevIconReScriptInterface xxx ctermfg=204 guifg=#f55385
        DevIconHbs                                                { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=202 guifg=#f0772b
        DevIconGemspec                                            { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
        DevIconSolidity                                           { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=74 guifg=#519aba
        DevIconJl                                                 { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
        DevIconKotlin                                             { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
        DevIconMarkdown                                           { fg="#519aba", }, -- DevIconMarkdown xxx ctermfg=74 guifg=#519aba
        DevIconLog                                                { fg="#ffffff", }, -- DevIconLog     xxx ctermfg=231 guifg=#ffffff
        DevIconBrewfile                                           { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
        DevIconYml                                                { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
        DevIconTextResource                                       { fg="#cbcb41", }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
        DevIconTextScene                                          { fg="#a074c4", }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
        DevIconCMakeLists                                         { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
        DevIconGitConfig                                          { fg="#41535b", }, -- DevIconGitConfig xxx ctermfg=239 guifg=#41535b
        DevIconConf                                               { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
        DevIconBabelrc                                            { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
        DevIconGitModules                                         { fg="#41535b", }, -- DevIconGitModules xxx ctermfg=239 guifg=#41535b
        DevIconEslintrc                                           { fg="#4b32c3", }, -- DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
        DevIconCoffee                                             { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
        DevIconJpg                                                { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
        DevIconZshenv                                             { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
        DevIconTypeScriptReactTest                                { fg="#1354bf", }, -- DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
        DevIconPxi                                                { fg="#5aa7e4", }, -- DevIconPxi     xxx ctermfg=39 guifg=#5aa7e4
        DevIconRb                                                 { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
        DevIconTestTs                                             { fg="#519aba", }, -- DevIconTestTs  xxx ctermfg=74 guifg=#519aba
        DevIconDoc                                                { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=26 guifg=#185abd
        DevIconJavaScriptReactTest                                { fg="#20c2e3", }, -- DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
        DevIconZshprofile                                         { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
        DevIconCppm                                               { fg="#519aba", }, -- DevIconCppm    xxx ctermfg=74 guifg=#519aba
        DevIconTestJs                                             { fg="#cbcb41", }, -- DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
        DevIconNotebook                                           { fg="#51a0cf", }, -- DevIconNotebook xxx ctermfg=74 guifg=#51a0cf
        DevIconZsh                                                { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
        DevIconLinux                                              { fg="#000000", }, -- DevIconLinux   xxx ctermfg=16 guifg=#000000
        DevIconToml                                               { fg="#ffffff", }, -- DevIconToml    xxx ctermfg=231 guifg=#ffffff
        DevIconRs                                                 { fg="#dea584", }, -- DevIconRs      xxx ctermfg=216 guifg=#dea584
        DevIconHtm                                                { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=196 guifg=#e34c26
        DevIconCxxm                                               { fg="#519aba", }, -- DevIconCxxm    xxx ctermfg=74 guifg=#519aba
        DevIconJs                                                 { fg="#f1f134", }, -- DevIconJs      xxx ctermfg=227 guifg=#f1f134
        DevIconLuau                                               { fg="#00a2ff", }, -- DevIconLuau    xxx ctermfg=75 guifg=#00a2ff
        DevIconTs                                                 { fg="#519aba", }, -- DevIconTs      xxx ctermfg=74 guifg=#519aba
        DevIconFennel                                             { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
        DevIconOut                                                { fg="#9f0500", }, -- DevIconOut     xxx ctermfg=124 guifg=#9f0500
        DevIconAac                                                { fg="#66d8ef", }, -- DevIconAac     xxx ctermfg=45 guifg=#66d8ef
        DevIconTcl                                                { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
        DevIconProlog                                             { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
        DevIconRss                                                { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
        DevIconReScript                                           { fg="#cc3e44", }, -- DevIconReScript xxx ctermfg=167 guifg=#cc3e44
        DevIconAzureCli                                           { fg="#0078d4", }, -- DevIconAzureCli xxx ctermfg=32 guifg=#0078d4
        DevIconDump                                               { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
        DevIconWebOpenFontFormat                                  { fg="#ececec", }, -- DevIconWebOpenFontFormat xxx ctermfg=255 guifg=#ececec
        DevIconHrl                                                { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=163 guifg=#b83998
        DevIconBazelWorkspace                                     { fg="#89e051", }, -- DevIconBazelWorkspace xxx ctermfg=113 guifg=#89e051
        DevIconGo                                                 { fg="#519aba", }, -- DevIconGo      xxx ctermfg=74 guifg=#519aba
        DevIconPxd                                                { fg="#5aa7e4", }, -- DevIconPxd     xxx ctermfg=39 guifg=#5aa7e4
        DevIconNswag                                              { fg="#85ea2d", }, -- DevIconNswag   xxx ctermfg=112 guifg=#85ea2d
        DevIconEslintIgnore                                       { fg="#4b32c3", }, -- DevIconEslintIgnore xxx ctermfg=56 guifg=#4b32c3
        DevIconGitIgnore                                          { fg="#41535b", }, -- DevIconGitIgnore xxx ctermfg=239 guifg=#41535b
        DevIconMts                                                { fg="#519aba", }, -- DevIconMts     xxx ctermfg=74 guifg=#519aba
        DevIconGodotProject                                       { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
        DevIconTex                                                { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=22 guifg=#3d6117
        DevIconBashrc                                             { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
        DevIconExs                                                { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
        DevIconTypeScriptReactSpec                                { fg="#1354bf", }, -- DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
        DevIconDart                                               { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
        DevIconSpecTs                                             { fg="#519aba", }, -- DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
        DevIconJpegXl                                             { fg="#a074c4", }, -- DevIconJpegXl  xxx ctermfg=140 guifg=#a074c4
        DevIconJavaScriptReactSpec                                { fg="#20c2e3", }, -- DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
        DevIconJson                                               { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
        DevIconSpecJs                                             { fg="#cbcb41", }, -- DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
        DevIconSvelteConfig                                       { fg="#ff3e00", }, -- DevIconSvelteConfig xxx ctermfg=196 guifg=#ff3e00
        DevIconCMake                                              { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
        DevIconTsx                                                { fg="#1354bf", }, -- DevIconTsx     xxx ctermfg=26 guifg=#1354bf
        DevIconApp                                                { fg="#9f0500", }, -- DevIconApp     xxx ctermfg=124 guifg=#9f0500
        DevIconBashProfile                                        { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
        DevIconSig                                                { fg="#e37933", }, -- DevIconSig     xxx ctermfg=166 guifg=#e37933
        DevIconBazelBuild                                         { fg="#89e051", }, -- DevIconBazelBuild xxx ctermfg=113 guifg=#89e051
        DevIconCsv                                                { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
        DevIconJsonc                                              { fg="#cbcb41", }, -- DevIconJsonc   xxx ctermfg=185 guifg=#cbcb41
        DevIconSvg                                                { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
        DevIconJsx                                                { fg="#20c2e3", }, -- DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
        DevIconJson5                                              { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
        DevIconVagrantfile                                        { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
        DevIconElm                                                { fg="#519aba", }, -- DevIconElm     xxx ctermfg=74 guifg=#519aba
        DevIconHh                                                 { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
        DevIconIni                                                { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
        DevIconSwift                                              { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=166 guifg=#e37933
        DevIconEex                                                { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
        DevIconNixOS                                              { fg="#7ab1db", }, -- DevIconNixOS   xxx ctermfg=110 guifg=#7ab1db
        DevIconRaspberryPiOS                                      { fg="#be1848", }, -- DevIconRaspberryPiOS xxx ctermfg=161 guifg=#be1848
        CmpItemAbbrDefault                                        { fg="#bbbbbb", }, -- CmpItemAbbrDefault xxx guifg=#bbbbbb
        CmpItemAbbrDeprecatedDefault                              { fg="#6a9955", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#6a9955
        CmpItemAbbrMatchDefault                                   { fg="#bbbbbb", }, -- CmpItemAbbrMatchDefault xxx guifg=#bbbbbb
        CmpItemAbbrMatchFuzzyDefault                              { fg="#bbbbbb", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#bbbbbb
        CmpItemKindDefault                                        { fg="#d7ba7d", }, -- CmpItemKindDefault xxx guifg=#d7ba7d
        CmpItemMenuDefault                                        { fg="#bbbbbb", }, -- CmpItemMenuDefault xxx guifg=#bbbbbb
        Cokeline_3_8                                              { fg="#ccc8ba", bg="#202020", }, -- Cokeline_3_8   xxx guifg=#ccc8ba guibg=#202020
        Cokeline_1_1                                              { fg="#0f0f0f", bg="#202020", }, -- Cokeline_1_1   xxx guifg=#0f0f0f guibg=#202020
        Cokeline_1_2                                              { fg="#893f3e", bg="#ccc8ba", }, -- Cokeline_1_2   xxx guifg=#893f3e guibg=#ccc8ba
        Cokeline_1_3                                              { fg="#202020", bg="#ccc8ba", }, -- Cokeline_1_3   xxx guifg=#202020 guibg=#ccc8ba
        Cokeline_1_4                                              { fg="#0f0f0f", bg="#ccc8ba", }, -- Cokeline_1_4   xxx guifg=#0f0f0f guibg=#ccc8ba
        Cokeline_1_5                                              { fg="#0f0f0f", bg="#ccc8ba", }, -- Cokeline_1_5   xxx guifg=#0f0f0f guibg=#ccc8ba
        Cokeline_1_6                                              { fg="#ba604c", bg="#ccc8ba", }, -- Cokeline_1_6   xxx guifg=#ba604c guibg=#ccc8ba
        Cokeline_1_7                                              { fg="#0f0f0f", bg="#ccc8ba", }, -- Cokeline_1_7   xxx guifg=#0f0f0f guibg=#ccc8ba
        lualine_transitional_lualine_a_normal_to_lualine_c_normal { fg="#007acc", bg="#252526", }, -- lualine_transitional_lualine_a_normal_to_lualine_c_normal xxx guifg=#007acc guibg=#252526
        lualine_transitional_lualine_b_normal_to_lualine_c_normal { fg="#454545", bg="#252526", }, -- lualine_transitional_lualine_b_normal_to_lualine_c_normal xxx guifg=#454545 guibg=#252526
        lualine_transitional_lualine_a_normal_to_lualine_b_normal { fg="#007acc", bg="#454545", }, -- lualine_transitional_lualine_a_normal_to_lualine_b_normal xxx guifg=#007acc guibg=#454545
        TodoBgFIX                                                 { fg="#d4d4d4", gui="bold", bg="#f44747", }, -- TodoBgFIX      xxx gui=bold guifg=#d4d4d4 guibg=#f44747
        TodoFgFIX                                                 { fg="#f44747", }, -- TodoFgFIX      xxx guifg=#f44747
        TodoSignFIX                                               { fg="#f44747", bg="#1e1e1e", }, -- TodoSignFIX    xxx guifg=#f44747 guibg=#1e1e1e
        TodoBgNOTE                                                { fg="#1e1e1e", gui="bold", bg="#569cd6", }, -- TodoBgNOTE     xxx gui=bold guifg=#1e1e1e guibg=#569cd6
        TodoFgNOTE                                                { fg="#569cd6", }, -- TodoFgNOTE     xxx guifg=#569cd6
        TodoSignNOTE                                              { fg="#569cd6", bg="#1e1e1e", }, -- TodoSignNOTE   xxx guifg=#569cd6 guibg=#1e1e1e
        TodoBgPERF                                                { fg="#1e1e1e", gui="bold", bg="#9cdcfe", }, -- TodoBgPERF     xxx gui=bold guifg=#1e1e1e guibg=#9cdcfe
        TodoFgPERF                                                { fg="#9cdcfe", }, -- TodoFgPERF     xxx guifg=#9cdcfe
        TodoSignPERF                                              { fg="#9cdcfe", bg="#1e1e1e", }, -- TodoSignPERF   xxx guifg=#9cdcfe guibg=#1e1e1e
        TodoBgHACK                                                { fg="#1e1e1e", gui="bold", bg="#dcdcaa", }, -- TodoBgHACK     xxx gui=bold guifg=#1e1e1e guibg=#dcdcaa
        TodoFgHACK                                                { fg="#dcdcaa", }, -- TodoFgHACK     xxx guifg=#dcdcaa
        TodoSignHACK                                              { fg="#dcdcaa", bg="#1e1e1e", }, -- TodoSignHACK   xxx guifg=#dcdcaa guibg=#1e1e1e
        TodoBgTEST                                                { fg="#1e1e1e", gui="bold", bg="#9cdcfe", }, -- TodoBgTEST     xxx gui=bold guifg=#1e1e1e guibg=#9cdcfe
        TodoFgTEST                                                { fg="#9cdcfe", }, -- TodoFgTEST     xxx guifg=#9cdcfe
        TodoSignTEST                                              { fg="#9cdcfe", bg="#1e1e1e", }, -- TodoSignTEST   xxx guifg=#9cdcfe guibg=#1e1e1e
        TodoBgTODO                                                { fg="#1e1e1e", gui="bold", bg="#569cd6", }, -- TodoBgTODO     xxx gui=bold guifg=#1e1e1e guibg=#569cd6
        TodoFgTODO                                                { fg="#569cd6", }, -- TodoFgTODO     xxx guifg=#569cd6
        TodoSignTODO                                              { fg="#569cd6", bg="#1e1e1e", }, -- TodoSignTODO   xxx guifg=#569cd6 guibg=#1e1e1e
        TodoBgWARN                                                { fg="#1e1e1e", gui="bold", bg="#dcdcaa", }, -- TodoBgWARN     xxx gui=bold guifg=#1e1e1e guibg=#dcdcaa
        TodoFgWARN                                                { fg="#dcdcaa", }, -- TodoFgWARN     xxx guifg=#dcdcaa
        TodoSignWARN                                              { fg="#dcdcaa", bg="#1e1e1e", }, -- TodoSignWARN   xxx guifg=#dcdcaa guibg=#1e1e1e
    }
end)

return theme

local M = {
    cmd = { "typescript-language-server", "--stdio" },
    flags = {
        allow_incremental_sync = true,
        debounce_text_changes = 500
    },
    diagnosticsDelay = '500ms',
    init_options = {
        -- preferences = { includeCompletionsForModuleExports = true }
    },
    settings = {
        typescript = {
            implementationsCodeLens = {
                enabled = true
            },
            referencesCodeLens = {
                enabled = false,
                showOnAllFunctions = false
            },
            -- inlayHints = {
            --     enumMemberValues = {
            --         enabled = true
            --     },
            --     functionLikeReturnTypes = {
            --         enabled = true
            --     },
            --     parameterNames = {
            --         enabled = true,
            --         suppressWhenArgumentMatchesName = false
            --     },
            --     parameterTypes = {
            --         enabled = true
            --     },
            --     propertyDeclarationTypes = {
            --         enabled = true
            --     },
            --     variableTypes = {
            --         enabled = true,
            --         suppressWhenTypeMatchesName = false
            --     }
            -- },
            format = {
                enable = true,
                semicolons = 'insert',
                indentSwitchCase = true,
                insertSpaceAfterCommaDelimiter = true,
                -- insertSpaceAfterConstructor = true,
                -- insertSpaceAfterFunctionKeywordForAnonymousFunctions = true,
                -- insertSpaceAfterKeywordsInControlFlowStatements = true,
                -- insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false,
                insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces = true,
                insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true,
                insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets = false,
                insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis = false,
                insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces = false,
                insertSpaceAfterSemicolonInForStatements = true,
                -- insertSpaceAfterTypeAssertion = true,
                insertSpaceBeforeAndAfterBinaryOperators = true,
                -- insertSpaceBeforeFunctionParenthesis = false,
                placeOpenBraceOnNewLineForControlBlocks = false,
                placeOpenBraceOnNewLineForFunctions = false
            },
            preferences = {
                includePackageJsonAutoImports = 'off'
            }
        }
    }
}


return M

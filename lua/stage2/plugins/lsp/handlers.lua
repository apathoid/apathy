local M = {}


M.config = {
    virtual_text = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    signs = {
        active = true,
        values = {
            {
                name = 'DiagnosticSignError',
                text = '>>',
                texthl = 'DiagnosticSignError',
                numhl = 'DiagnosticSignError'
            },
            {
                name = 'DiagnosticSignWarn',
                text = '>',
                texthl = 'DiagnosticSignWarn',
                numhl = 'DiagnosticSignWarn'
            },
            {
                name = 'DiagnosticSignHint',
                text = '󰌵',
                numhl = 'DiagnosticSignHint'
            },
            {
                name = 'DiagnosticSignInfo',
                text = '󰋼',
                numhl = 'DiagnosticSignInfo'
            }
        }
    },
    float = {
        focusable = false,
        style = 'minimal',
        border = 'rounded',
        source = 'if_many',
        header = '',
        prefix = '',
        format = function(d)
            local code = d.code or (d.user_data and d.user_data.lsp.code)

            if code then
                return string.format('%s [%s]', d.message, code):gsub('1. ', '')
            end

            return d.message
        end
    }
}


function M.setup()
    M.define_signs()

    vim.diagnostic.config(M.config)

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
        vim.lsp.handlers.hover,
        M.config.float
    )

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
        vim.lsp.handlers.signature_help,
        M.config.float
    )
end

function M.define_signs()
    for _, sign in ipairs(M.config.signs.values) do
        vim.fn.sign_define(sign.name, { texthl = sign.texthl, text = sign.text, numhl = sign.numhl })
    end
end


return M

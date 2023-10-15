local M = {}


M.mappings = {
    normal_mode = {
        ['K'] = { vim.lsp.buf.hover, 'Show hover' },
        ['gD'] = { vim.lsp.buf.declaration, 'Goto declaration' },
        ['gI'] = { vim.lsp.buf.implementation, 'Goto Implementation' },
        ['gs'] = { vim.lsp.buf.signature_help, 'Show signature help' },
        ['gR'] = { vim.lsp.buf.references, 'Show references' },
        ['gl'] = {
            function()
                local config = {
                    show_header = false,
                    border = 'single'
                }

                vim.diagnostic.open_float(config)
            end,
            'Show line diagnostics'
        },
        ['<space>rn'] = { vim.lsp.buf.rename, 'Rename entity' },
        ['<space>f'] = { vim.lsp.buf.format, 'Format code of entire buffer' }
    },
    insert_mode = {},
    visual_mode = {
        ['<space>f'] = { vim.lsp.buf.format, 'Format selected code' }
    }
}


function M.add_buffer_keybindings(bufnr)
    local modes = {
        normal_mode = 'n',
        insert_mode = 'i',
        visual_mode = 'v',
    }

    for mode_name, mode_char in pairs(modes) do
        for key, remap in pairs(M.mappings[mode_name]) do
            local opts = { buffer = bufnr, desc = remap[2], noremap = true, silent = true }

            vim.keymap.set(mode_char, key, remap[1], opts)
        end
    end
end


return M

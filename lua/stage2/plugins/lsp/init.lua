local M = {}


local autocmd = apth.utils.autocmd
local lsp_utils = require('stage2.plugins.lsp.utils')

local servers = require('stage2.plugins.lsp.servers')
local handlers = require('stage2.plugins.lsp.handlers')
local mappings = require('stage2.plugins.lsp.mappings')

local mason = require('stage2.plugins.mason')


local buffer_opts = {
    --- enable completion triggered by <c-x><c-o>
    omnifunc = 'v:lua.vim.lsp.omnifunc',
    --- use gq for formatting
    formatexpr = 'v:lua.vim.lsp.formatexpr(#{timeout_ms:500})'
}

local function add_buffer_opts(bufnr)
    for k, v in pairs(buffer_opts) do
        vim.api.nvim_buf_set_option(bufnr, k, v)
    end
end


function M.on_exit(_, _)
    autocmd.clear_augroup 'lsp_document_highlight'
    autocmd.clear_augroup 'lsp_code_lens_refresh'
end


function M.on_attach(client, bufnr)
    lsp_utils.setup_document_highlight(client, bufnr)
    lsp_utils.setup_codelens_refresh(client, bufnr)

    mappings.add_buffer_keybindings(bufnr)
    add_buffer_opts(bufnr)

    lsp_utils.setup_document_symbols(client, bufnr)
end


function M.setup()
    local ok, _ = pcall(require, 'lspconfig')

    if not ok then
        return
    end

    for _, sign in ipairs(handlers.config.signs.values) do
        vim.fn.sign_define(sign.name, { texthl = sign.texthl, text = sign.text, numhl = sign.numhl })
    end

    handlers.setup()

    mason.setup()
    servers.setup(M.on_attach, M.on_exit)
end


return M

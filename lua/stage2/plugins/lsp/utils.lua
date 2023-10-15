local M = {}


function M.setup_document_highlight(client, bufnr)
    local hl_sup_ok, highlight_supported = pcall(function()
        return client.supports_method 'textDocument/documentHighlight'
    end)

    if not hl_sup_ok or not highlight_supported then
        return
    end

    local group = 'lsp_document_highlight'
    local hl_events = { 'CursorHold', 'CursorHoldI' }

    local hl_au_ok, hl_autocmds = pcall(vim.api.nvim_get_autocmds, {
        group = group,
        buffer = bufnr,
        event = hl_events
    })

    if hl_au_ok and #hl_autocmds > 0 then
        return
    end

    vim.api.nvim_create_augroup(group, { clear = false })
    vim.api.nvim_create_autocmd(hl_events, {
        group = group,
        buffer = bufnr,
        callback = vim.lsp.buf.document_highlight
    })
    vim.api.nvim_create_autocmd('CursorMoved', {
        group = group,
        buffer = bufnr,
        callback = function() vim.lsp.buf.clear_references(bufnr) end
    })
end


function M.setup_document_symbols(_, _)
    vim.g.navic_silence = false -- can be set to true to suppress error
end

function M.setup_codelens_refresh(client, bufnr)
    local cl_sup_ok, codelens_supported = pcall(function()
        return client.supports_method 'textDocument/codeLens'
    end)

    if not cl_sup_ok or not codelens_supported then
        return
    end

    local group = 'lsp_code_lens_refresh'
    local cl_events = { 'BufEnter', 'InsertLeave' }

    local cl_au_ok, cl_autocmds = pcall(vim.api.nvim_get_autocmds, {
        group = group,
        buffer = bufnr,
        event = cl_events
    })

    if cl_au_ok and #cl_autocmds > 0 then
        return
    end

    vim.api.nvim_create_augroup(group, { clear = false })
    vim.api.nvim_create_autocmd(cl_events, {
        group = group,
        buffer = bufnr,
        callback = vim.lsp.codelens.refresh,
    })
end


return M

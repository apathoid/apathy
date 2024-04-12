local ok, vgit = pcall(require, 'vgit')

if not ok then
    return
end


vgit.setup({
    settings = {
        live_blame = {
            enabled = false
        },
        authorship_code_lens = {
            enabled = true
        },
        scene = {
            diff_preference = 'unified'
        }
    },
    keymaps = {
        ['n <C-Tab>'] = function() vim.cmd('winc p') end,
        ['n <C-A-k>'] = function() require('vgit').hunk_up() end,
        ['n <C-A-j>'] = function() require('vgit').hunk_down() end,
        ['n <leader>hr'] = function() require('vgit').buffer_hunk_reset() end,
        ['n <leader>hp'] = function() require('vgit').buffer_hunk_preview() end,
        ['n <leader>hs'] = function() require('vgit').buffer_hunk_stage() end,
        ['n <leader>hb'] = function() require('vgit').buffer_blame_preview() end,
        ['n <leader>hh'] = function() require('vgit').buffer_history_preview() end,
        ['n <leader>hd'] = function() require('vgit').buffer_diff_preview() end,
        ['n <leader>he'] = function() require('vgit').project_diff_preview() end,
        ['n <leader>hw'] = function() require('vgit').project_hunks_staged_preview() end,
        ['n <leader>ht'] = function() require('vgit').toggle_diff_preference() end,
    }
})

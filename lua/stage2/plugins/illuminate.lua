return {
    'RRethy/vim-illuminate',
    lazy = true,
    event = 'CursorHold',
    config = function()
        local illuminate = require('illuminate')

        illuminate.configure({
            filetypes_denylist = {
                'dirvish',
                'fugitive',
                'alpha',
                'NvimTree',
                'lazy',
                'NeogitStatus',
                'NeogitStatusNew',
                'NeogitConsole',
                'NeogitEditor',
                'NeogitPopup',
                'NeogitLogView',
                'NeogitReflogView',
                'NeogitRebaseTodo',
                'NeogitCommitView',
                'NeogitCommitSelectView',
                'NeogitCommitMessage',
                'NeogitMergeMessage',
                'NeogitTagMessage',
                'NeogitBranchDescription',
                'NeogitGitCommandHistory',
                'Trouble',
                'lir',
                'Outline',
                'spectre_panel',
                'toggleterm',
                'DressingSelect',
                'TelescopePrompt'
            }
        })
    end
}

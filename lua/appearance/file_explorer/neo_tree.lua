---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.file_explorer.base')

local theme = lush(function()
    return {
        NeoTreeNormal { base.FileExplorerNormal },
        NeoTreeStatusLine { base.FileExplorerStatusLine },
        NeoTreeCursorLine { base.FileExplorerCursorLine },
        NeoTreeGitUntracked { base.FileExplorerGitUntracked },
        NeoTreeGitModified { base.FileExplorerGitModified },
        NeoTreeGitDeleted { base.FileExplorerGitDeleted },
        NeoTreeGitAdded { base.FileExplorerGitAdded },
        NeoTreeGitUnstaged { base.FileExplorerGitUnstaged },
        NeoTreeTabActive { fg = '#d4d4d4', bg = '#3a3a3a' },
        NeoTreeTabInactive { fg = '#cbc7b9', bg = '#171717' },
        NeoTreeTabSeparatorActive { fg = '#7f7f7f', bg = '#3a3a3a' },
        NeoTreeTabSeparatorInactive { fg = '#cbc7b9', bg = '#171717' }
    }
end)


return theme

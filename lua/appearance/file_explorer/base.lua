---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local theme = lush(function()
    return {
        FileExplorerNormal { fg = '#d4d4d4', bg = '#1d1d1d' },
        FileExplorerStatusLine { fg = '#d4d4d4', bg = '#1d1d1d' },
        FileExplorerStatusLineNC { fg = '#d4d4d4', bg = '#1d1d1d' },
        FileExplorerCursorLine { bg = '#303030' },
        FileExplorerGitUntracked { fg = '#a1b4ca' },
        FileExplorerGitModified { fg = '#dfd18b' },
        FileExplorerGitDeleted { fg = '#d16969' },
        FileExplorerGitAdded { fg = '#92bf99' },
        FileExplorerGitUnstaged { fg = '#a1b4ca' }
    }
end)


return theme

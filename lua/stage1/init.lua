--[[
-- Stage1 is a set of parameters that affects on neovim's overall behavior.
--]]


local editor = require('stage1.editor')
local mappings = require('stage1.mappings')

local M = {}

function M.init()
    -- Configure editor
    editor.setup()

    -- General keybindigs
    mappings.setup()

    -- Fix TreeSitter highlights
    require('stage1.fix_ts_hl')
end


return M

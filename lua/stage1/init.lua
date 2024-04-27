--[[
-- Stage1 is about the editor's basic functionality.
--]]


local editor = require('stage1.editor')
local mappings = require('stage1.mappings')

local M = {}

function M.init()
    -- Configure editor
    editor.setup()

    -- General keybindigs
    mappings.setup()
end


return M

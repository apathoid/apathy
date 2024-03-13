--[[
-- Stage3 is a set of parameters that allow post-plugins settings to be applied.
--]]


local colorscheme = require('stage3.colorscheme')
local autocommands = require('stage3.autocommands')

local M = {}

function M.init()
    -- Setup colorscheme and all related to theming
    colorscheme.setup()

    -- Register autocommands
    autocommands.setup()
end


return M

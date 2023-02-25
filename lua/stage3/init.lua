--[[
-- Stage3 is a set of parameters that allow post-plugins settings to be applied.
--]]


local colorscheme = require('stage3.colorscheme')

local M = {}

function M.init()
    -- Setup colorscheme and all related to theming
    colorscheme.setup()
end


return M

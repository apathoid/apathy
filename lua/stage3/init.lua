--[[
-- Stage3 is the post-plugin-loading step.
-- Any configuration that must not be overrided by any plugin should go here.
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

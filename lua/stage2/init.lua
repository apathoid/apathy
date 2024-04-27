--[[
-- Stage2 is about a package manager, plugins and their configuration.
--]]


local pm = require('stage2.pm')

local M = {}

function M.init()
    -- Bootstrap package manager
    pm.setup()
end


return M

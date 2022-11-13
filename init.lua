require('impatient')

require('globals')

local stage1 = require('stage1')
local stage2 = require('stage2')
local stage3 = require('stage3')

-- An essential configuration
stage1.init()

-- Plugins and intermediate configuration
stage2.init()

-- Finalization
stage3.init()

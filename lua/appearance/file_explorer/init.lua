local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.file_explorer.base');
local neo_tree = require('appearance.file_explorer.neo_tree')

return lush.merge({base, neo_tree})

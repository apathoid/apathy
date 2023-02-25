local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local file_explorer = require('appearance.file_explorer')
local tab_line = require('appearance.tab_line')
local status_line = require('appearance.status_line')

return lush.merge({file_explorer, tab_line, status_line})

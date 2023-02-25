local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.tab_line.base');

return lush.merge({base})

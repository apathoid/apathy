local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.status_line.base');

return lush.merge({base})

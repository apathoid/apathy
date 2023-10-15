local M = {}


---Check if the value is in the list
---@param list table the list to search within
---@param value any the value to check against
function M.has_value(list, value)
    for _,v in ipairs(list) do
        if v == value then
            return true
        end
    end

    return false
end


---Get current theme
function M.get_theme()
    local scheme_name = apth.config.editor.colorscheme

    if string.sub(scheme_name, 1, 1) == '_' then
        scheme_name = string.sub(scheme_name, 2)
    end

    local ok, custom_theme = pcall(require, 'appearance.colorscheme.'..scheme_name)

    if ok then
        return custom_theme
    end

    return require('appearance.colorscheme.base')
end


return M

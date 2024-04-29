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


---@class basedir_args
---@field path string

---Get the directory from the path.
---If the path is pointing to a file, strip filename and get the containing dir
---@param args basedir_args
function M.basedir(args)
    local is_directory = vim.fn.isdirectory(args.path) == 1
    local dir_path = is_directory and args.path or string.sub(
        args.path,
        1,
        string.len(args.path) - string.find(string.reverse(args.path), '/')
    )

    return dir_path
end


return M

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


---@class base_dir_args
---@field path string path the nearest directory should be determined of

---Get the directory from the path.
---If the path is pointing to a file, strip filename and get the containing dir
---@param args base_dir_args
function M.get_base_dir(args)
    local path = args.path
    local is_dir = vim.fn.isdirectory(path) == 1

    if is_dir and not (string.sub(path, string.len(path)) == '/') then
        path = path..'/'
    end

    local dir_path = string.sub(
        path,
        1,
        string.len(path) - string.find(string.reverse(path), '/')
    )

    return dir_path
end


---@class is_path_absolute_args
---@field path string path needed to check

---Check wether path is absolute
---@param args is_path_absolute_args
function M.is_path_absolute(args)
    return string.sub(args.path, 1, 1) == '/'
end


---@class cd_path_args
---@field to string path cwd should be set to

---Get a correct path for cd command based on the given arg
---@param args cd_path_args
function M.get_cd_path(args)
    local cwd = vim.fn.getcwd()
    local new_path = vim.fn.expand(args.to)
    local new_path_is_absolute = M.is_path_absolute({ path = new_path })

    local path = ''

    if new_path_is_absolute then
        path = new_path
    else
        path = cwd..'/'..new_path
    end

    return vim.fn.expand(path)
end


---@class get_buf_opts_args
---@field id string buffer id

---Safely get buffer options
---@param args get_buf_opts_args
---@return _bo
function M.get_buf_opts(args)
    local _, ft = pcall(function ()
        return vim.bo[args.id].ft
    end)

    return {
        ft = ft or ''
    }
end


return M

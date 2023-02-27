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


return M

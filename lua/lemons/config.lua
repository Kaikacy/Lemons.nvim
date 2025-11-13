---@class lemons.ColorsOverride
---@field black? string
---@field dark_gray? string
---@field gray? string
---@field light_gray? string
---@field darker_white? string
---@field dark_white? string
---@field white? string
---@field red? string
---@field dark_green? string
---@field lime? string
---@field green? string
---@field dark_yellow? string
---@field orange? string
---@field yellow? string
---@field blue? string
---@field pink? string
---@field dark_cyan? string
---@field cyan? string
---@field light_cyan? string

---@class lemons.Config
---@field colors_override? lemons.ColorsOverride
---@field undercurl? boolean

local M = {}

---@type lemons.Config
M.defaults = {
    colors_override = {},
    undercurl = false,
}

---@param opts? lemons.Config
---@return lemons.Config
function M.setup(opts)
    ---@diagnostic disable-next-line: cast-type-mismatch
    ---@cast opts lemons.Config
    return opts and vim.tbl_deep_extend("force", M.defaults, opts) or M.defaults
end

return M

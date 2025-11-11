local M = {}

---@class lemons.ColorsOverrides
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

---@class lemons.Configuration
---@field overrides lemons.ColorsOverrides
---@field highlights_overrides table<string, vim.api.keyset.highlight>

---@type lemons.Configuration
M.default = {
    overrides = {},
    highlights_overrides = {},
}

---@param opts? {overrides?: lemons.ColorsOverrides, highlights_overrides?: table<string, vim.api.keyset.highlight>}
---@return lemons.Configuration
function M.setup(opts)
    ---@cast opts lemons.Configuration
    return opts and vim.tbl_deep_extend("force", M.default, opts) or M.default
end

return M

---@class lemons.Colors
---@field black string
---@field dark_grey string
---@field grey string
---@field light_grey string
---@field darker_white string
---@field dark_white string
---@field white string
---@field red string
---@field dark_green string
---@field lime string
---@field green string
---@field dark_yellow string
---@field orange string
---@field yellow string
---@field blue string
---@field pink string
---@field dark_cyan string
---@field cyan string
---@field light_cyan string

local M = {}

-- stylua: ignore
---@type lemons.Colors
M.defaults = {
    black        = "#040404",
    dark_grey    = "#161616",
    grey         = "#212121",
    light_grey   = "#565656",
    darker_white = "#808080",
    dark_white   = "#cacaca",
    white        = "#f0f0f0",
    red          = "#e33a5b",
    dark_green   = "#0B1B10",
    lime         = "#2ed592",
    green        = "#2ED563",
    dark_yellow  = "#1D190D",
    orange       = "#fa8a49",
    yellow       = "#F0BE42",
    blue         = "#4e70c6",
    pink         = "#e44e9d",
    dark_cyan    = "#0C1918",
    cyan         = "#37C3B5",
    light_cyan   = "#6AD8ED",
}

M.colors = M.defaults

---@param overrides lemons.Colors
function M.override(overrides)
    M.colors = vim.tbl_extend("force", M.defaults, overrides)
end

return M

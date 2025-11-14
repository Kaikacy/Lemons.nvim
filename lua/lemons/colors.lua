---@class lemons.Colors
---@field black string              |"#040404"
---@field dark_gray string          |"#161616"
---@field gray string               |"#212121"
---@field light_gray string         |"#565656"
---@field darker_white string       |"#808080"
---@field dark_white string         |"#cacaca"
---@field white string              |"#f0f0f0"
---@field red string                |"#ed505e"
---@field dark_green string         |"#0b1b10"
---@field lime string               |"#2ed592"
---@field green string              |"#2ed563"
---@field dark_yellow string        |"#1d190d"
---@field orange string             |"#fa8a49"
---@field yellow string             |"#f0be42"
---@field blue string               |"#5088ed"
---@field pink string               |"#f45ab4"
---@field dark_cyan string          |"#0c1918"
---@field cyan string               |"#37c3b5"
---@field light_cyan string         |"#6ad8ed"

local M = {}

-- stylua: ignore
---@type lemons.Colors
M.defaults = {
    black        = "#040404",
    dark_gray    = "#161616",
    gray         = "#212121",
    light_gray   = "#565656",
    darker_white = "#808080",
    dark_white   = "#cacaca",
    white        = "#f0f0f0",
    red          = "#ed505e",
    dark_green   = "#0b1b10",
    lime         = "#2ed592",
    green        = "#2ed563",
    dark_yellow  = "#1d190d",
    orange       = "#fa8a49",
    yellow       = "#f0be42",
    blue         = "#5088ed",
    pink         = "#f45ab4",
    dark_cyan    = "#0c1918",
    cyan         = "#37c3b5",
    light_cyan   = "#6ad8ed",
}

M.colors = M.defaults

---@param overrides lemons.ColorsOverride
---@return lemons.Colors
function M.override(overrides)
    M.colors = vim.tbl_extend("force", M.defaults, overrides)
    return M.colors
end

return M

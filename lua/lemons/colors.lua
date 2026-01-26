---@class lemons.Colors
---@field black        string|"#000000"
---@field dark_gray    string|"#161616"
---@field gray         string|"#212121"
---@field light_gray   string|"#565656"
---@field darker_white string|"#808080"
---@field dark_white   string|"#c0c0c0"
---@field white        string|"#e8e8e8"
---@field red          string|"#ed505e"
---@field dark_green   string|"#0b1b10"
---@field lime         string|"#2ed592"
---@field green        string|"#2ed563"
---@field orange       string|"#fa8a49"
---@field yellow       string|"#f0be42"
---@field blue         string|"#5088ed"
---@field pink         string|"#f45ab4"
---@field dark_cyan    string|"#0c1918"
---@field cyan         string|"#37c3b5"

local M = {}

-- stylua: ignore
---@type lemons.Colors
M.defaults = {
    black        = "#000000",
    dark_gray    = "#161616",
    gray         = "#212121",
    light_gray   = "#565656",
    darker_white = "#808080",
    dark_white   = "#c0c0c0",
    white        = "#e8e8e8",
    red          = "#ed505e",
    dark_green   = "#0b1b10",
    lime         = "#2ed592",
    green        = "#2ed563",
    orange       = "#fa8a49",
    yellow       = "#f0be42",
    blue         = "#5088ed",
    pink         = "#f45ab4",
    dark_cyan    = "#0c1918",
    cyan         = "#37c3b5",
}

---@param overrides lemons.ColorsOverride
---@return lemons.Colors
function M.override(overrides)
    return vim.tbl_extend("force", M.defaults, overrides)
end

return M

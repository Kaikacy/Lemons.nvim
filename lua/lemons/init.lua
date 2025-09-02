---@alias lemons.ColorsOverride table<string, string>
---@alias lemons.HlOverride fun(colors: lemons.Colors): lemons.Highlights

---@class lemons.Config
---@field italic_comments? boolean Make comments italic
---@field bold_functions? boolean Make functions bold
---@field terminal_colors? boolean Setup terminal colors
---@field float_style? "normal" | "light" Set floating window background
---@field hl_override? lemons.HlOverride Override highlights
---@field colors_override? lemons.ColorsOverride Override colors

local M = {}

---@type lemons.Config
local config = {
    italic_comments = true,
    bold_functions = false,
    terminal_colors = true,
    float_style = "normal",
    hl_override = function()
        return {}
    end,
    colors_override = {},
}

---@param opts? lemons.Config
function M.setup(opts)
    config = vim.tbl_extend("force", config, opts or {})
end

function M.load()
    if vim.g.colors_name then
        vim.cmd.highlight("clear")
        vim.cmd.syntax("reset")
    end

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    require("lemons.colors").override(config.colors_override)

    require("lemons.highlights").set(config)
end

return M

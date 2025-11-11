---@module "lemons"
local M = {}
local config = require("lemons.config")

---@param opts? lemons.Configuration
function M.setup(opts)
    M.config = config.setup(opts)
end

function M.load()
    vim.cmd.highlight("clear")
    vim.cmd.syntax("reset")

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    local colors = require("lemons.colors")

    for color, value in pairs(M.config and M.config.overrides or {}) do
        colors[color] = value
    end

    local hls = require("lemons.highlights").get(colors, M.config)
    for hl, col in pairs(hls) do
        vim.api.nvim_set_hl(0, hl, col)
    end

    require("lemons.highlights").set_terminal_colors(colors)
end

return M

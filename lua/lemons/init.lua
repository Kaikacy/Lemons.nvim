---@module "lemons"
local M = {}
local config = require("lemons.config")
local hi = require("lemons.highlights")

---@param opts? lemons.Config
function M.setup(opts)
    M.options = config.setup(opts)
end

function M.load()
    vim.cmd.highlight("clear")
    vim.cmd.syntax("reset")

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    M.options = M.options or config.defaults
    local colors = require("lemons.colors").override(M.options.colors_override)

    local hls = hi.get_highlights(colors, M.options)

    for key, hl in pairs(hls) do
        vim.api.nvim_set_hl(0, key, hl)
    end

    if M.options.terminal_colors then
        hi.set_terminal_colors(colors)
    end
end

return M

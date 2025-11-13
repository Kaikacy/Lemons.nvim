---@module "lemons"
local M = {}
local config = require("lemons.config")

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
    local colors = vim.tbl_extend("force", require("lemons.colors"), M.options.colors_override or {})

    local hls = require("lemons.highlights").get_highlights(colors, M.options)

    for key, hl in pairs(hls) do
        vim.api.nvim_set_hl(0, key, hl)
    end

    require("lemons.highlights").set_terminal_colors(colors)
end

return M

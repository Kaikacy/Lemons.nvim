---@module "lemons"
local M = {}
local config = require("lemons.config")

---@param opts? lemons.OptionalConfig
function M.setup(opts)
    M.options = config.setup(opts)
end

function M.load()
    vim.cmd.highlight("clear")
    vim.cmd.syntax("reset")

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    M.options = M.options or { undercurl = true }
    local colors = vim.tbl_deep_extend(
        "force",
        require("lemons.colors"),
        (M.options and M.options.overrides and M.options.overrides.colors) or {}
    )

    local hls = require("lemons.highlights").get_highlights(colors, M.options.undercurl or true)

    for key, hl in pairs(hls) do
        vim.api.nvim_set_hl(0, key, hl)
    end

    require("lemons.highlights").set_terminal_colors(colors)
end

return M

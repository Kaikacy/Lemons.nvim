---@module "lemons"
local M = {}
local config = require("lemons.config")
local hi = require("lemons.highlights")
local co = require("lemons.colors")

---@param opts? lemons.Config
function M.setup(opts)
    M.options = config.setup(opts)

    M.colors = co.override(M.options.colors_override)

    M.hls = hi.get_highlights(M.colors, M.options)

    local hls_overrides = M.options.hls_override(M.colors)
    for key, val in pairs(hls_overrides) do
        if val == false then
            M.hls[key] = nil
        else
            M.hls[key] = val
        end
    end
end

function M.load()
    vim.cmd.highlight("clear")
    vim.cmd.syntax("reset")

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    if not M.options then
        -- setup wasn't called so set defaults
        assert(not M.hls and not M.colors)
        M.options = config.defaults
        M.colors = require("lemons.colors").defaults
        M.hls = hi.get_highlights(M.colors, config.defaults)
    end

    for key, val in pairs(M.hls) do
        vim.api.nvim_set_hl(0, key, val)
    end

    if M.options.terminal_colors then
        hi.set_terminal_colors(M.colors)
    end
end

return M

local M = {}

function M.load()
    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "lemons"

    local colors = require("lemons.colors")
    require("lemons.highlights").set(colors)
end

return M

local c = require("lemons.colors").colors

return {
    normal = {
        a = { fg = c.black, bg = c.yellow, gui = "bold" },
        b = { bg = c.gray, fg = c.white },
        c = "StatusLine",
    },
    insert = {
        a = { fg = c.black, bg = c.green, gui = "bold" },
    },
    visual = {
        a = { fg = c.black, bg = c.pink, gui = "bold" },
    },
    replace = {
        a = { fg = c.black, bg = c.red, gui = "bold" },
    },
    command = {
        a = { fg = c.black, bg = c.blue, gui = "bold" },
    },
    terminal = {
        a = { fg = c.black, bg = c.orange, gui = "bold" },
    },
    inactive = {
        a = { fg = c.dark_white, bg = c.gray, gui = "bold" },
        c = "StatusLineNC",
    },
}

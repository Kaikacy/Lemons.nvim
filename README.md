# Lemons.nvim 🍋
My favorite colorscheme for Neovim.
> Dark mode only

<img alt="preview" src="https://github.com/user-attachments/assets/c6f48c00-65a8-4271-a2cb-9f4112e5a98f" />

## 📦 Setup
Just install with any package manager.
[Lazy.nvim](https://github.com/folke/lazy.nvim) for example:
```lua
{
  "Kaikacy/Lemons.nvim",
  version = "*", -- for stable release
  branch = "renaissance",
  lazy = false,
  priority = 1000,
  config = function()
    require("lemons").setup({
      -- options (see #configuration)
    })
    vim.cmd.colorscheme("lemons")
  end,
}
```
> ~Configuration options are not provided and I probably won't add any 😐~

## ⚙️ Configuration
### Defaults:
```lua
---@type lemons.Config
{
  ---@type lemons.ColorsOverride
  colors_override = {}, -- Override color palette
  hls_override = function(c) return {} end, -- Override highlights
  undercurl = false, -- Use undercurl instead of underline
  terminal_colors = true, -- Set terminal colors
  italic_comments = true, -- Italicize comments
  lighter_float = false, -- Use ligher color for floating window background
}
```
### Example:
```lua
require("lemons").setup({
  lighter_float = true,
  colors_override = {
    red = "#ff0000" -- pure red
  },
  hls_override = function(c)
    return {
      SnacksPicker = { link = "Normal" },
      SnacksPickerBorder = { bg = c.black, fg = c.gray },
    }
  end,
})
```

## 🎨 Colors
To access color palette:
```lua
-- default colors
local default_colors = require("lemons.colors").defaults
-- overridden colors (this should be used after calling setup)
local colors = require("lemons").colors
```

### Default colors:
| Name         | Value   |
|--------------|---------|
| `black`        | `#000000` |
| `dark_gray`    | `#161616` |
| `gray`         | `#212121` |
| `light_gray`   | `#565656` |
| `darker_white` | `#808080` |
| `dark_white`   | `#c0c0c0` |
| `white`        | `#e8e8e8` |
| `red`          | `#ed505e` |
| `dark_green`   | `#0b1b10` |
| `lime`         | `#2ed592` |
| `green`        | `#2ed563` |
| `orange`       | `#fa8a49` |
| `yellow`       | `#f0be42` |
| `blue`         | `#5088ed` |
| `pink`         | `#f45ab4` |
| `dark_cyan`    | `#0c1918` |
| `cyan`         | `#37c3b5` |

## 🔌 Plugin support
Here's the [list of supported plugins](lua/lemons/highlights.lua#L176).
I only added highlights for the ones I use and don't like the defaults, but **feel free to make PRs and Issues**.

## 🍭 Extras
[extras directory](extras/) contains additional color configs for different programs and tools.

<img alt="terminal preview" src="https://github.com/user-attachments/assets/d829e7ba-7512-4be2-8774-9937d128024d" />

*Foot terminal*

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
  undercurl = false, -- Use undercurl instead of underline
  terminal_colors = true, -- Set terminal colors
}
```

## 🎨 Colors
To access color palette:
```lua
-- default colors
local default_colors = require("lemons.colors").defaults
-- overridden colors (this should be used after calling setup)
local colors = require("lemons.colors").colors
```

### Default colors:
| Name         | Value   |
|--------------|---------|
| `black`        | `#040404` |
| `dark_gray`    | `#161616` |
| `gray`         | `#212121` |
| `light_gray`   | `#565656` |
| `darker_white` | `#808080` |
| `dark_white`   | `#cacaca` |
| `white`        | `#f0f0f0` |
| `red`          | `#ed505e` |
| `dark_green`   | `#0b1b10` |
| `lime`         | `#2ed592` |
| `green`        | `#2ED563` |
| `dark_yellow`  | `#1D190D` |
| `orange`       | `#fa8a49` |
| `yellow`       | `#F0BE42` |
| `blue`         | `#5088ed` |
| `pink`         | `#f45ab4` |
| `dark_cyan`    | `#0C1918` |
| `cyan`         | `#37C3B5` |
| `light_cyan`   | `#6AD8ED` |

## 🔌 Plugin support
Here's the [list of supported plugins](lua/lemons/highlights.lua#L161).
I only added highlights for the ones I use and don't like the defaults, but **feel free to make PRs and Issues**.

## 🍭 Extras
[extras directory](extras/) contains additional color configs for different programs and tools.

<img alt="terminal preview" src="https://github.com/user-attachments/assets/d829e7ba-7512-4be2-8774-9937d128024d" />

*Foot terminal*

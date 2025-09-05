---@alias lemons.Highlights table<string, vim.api.keyset.highlight>

---@param config lemons.Config
---@param c lemons.Colors
---@return lemons.Highlights
local function get_highlights(config, c)
    return {
        Normal = { fg = c.white, bg = c.black },
        ColorColumn = { bg = c.dark_grey },
        Conceal = { fg = c.darker_white },
        CurSearch = { bg = c.yellow, fg = c.black },
        Cursor = { bg = c.white, fg = c.black },
        CursorColumn = { bg = c.dark_grey },
        CursorLine = { bg = c.dark_grey },
        Directory = { fg = c.orange },
        DiffAdd = { bg = c.dark_green, fg = c.green },
        DiffChange = { bg = c.grey },
        DiffDelete = { bg = c.grey, fg = c.red },
        DiffText = { bg = c.dark_cyan, fg = c.cyan },
        NonText = { fg = c.light_grey },
        TermCursor = { fg = c.black, bg = c.yellow },
        ErrorMsg = { link = "DiagnosticError" },
        WarningMsg = { link = "DiagnosticWarn" },
        WinSeparator = { fg = c.grey },
        Folded = { bg = c.dark_cyan, fg = c.cyan },
        SignColumn = { fg = c.light_grey },
        LineNr = { fg = c.light_grey },
        CursorLineNr = { fg = c.yellow, bold = true },
        MatchParen = { bg = c.grey, bold = true },
        Search = { bg = c.dark_yellow, fg = c.yellow },
        ModeMsg = { fg = c.green },
        MoreMsg = { fg = c.yellow },
        NormalFloat = (function()
            if config.float_style == "normal" then
                return { link = "Normal" }
            elseif config.float_style == "light" then
                return { bg = c.dark_grey }
            end
        end)(),
        FloatBorder = (function()
            if config.float_style == "normal" then
                return { bg = c.black, fg = c.light_grey }
            elseif config.float_style == "light" then
                return { bg = c.dark_grey, fg = c.light_grey }
            end
        end)(),
        Title = { fg = c.yellow, bold = true },
        Pmenu = { bg = c.dark_grey, fg = c.white },
        PmenuSel = { fg = c.black, bg = c.yellow },
        PmenuExtra = { fg = c.darker_white },
        PmenuSbar = { bg = c.grey },
        PmenuThumb = { bg = c.dark_white },
        PmenuMatch = { bold = true },
        PmenuMatchSel = { bold = true, sp = c.black },
        Question = { fg = c.yellow },
        QuickFixLine = { bold = true },
        qfFileName = { fg = c.yellow },
        qfLineNr = { fg = c.darker_white },
        SpecialKey = { bg = c.dark_cyan, fg = c.cyan },
        SpellBad = { undercurl = true, sp = c.red },
        SpellCap = { undercurl = true, sp = c.yellow },
        SpellLocal = { undercurl = true, sp = c.green },
        SpellRare = { undercurl = true, sp = c.cyan },
        StatusLine = { bg = c.dark_grey, fg = c.white },
        StatusLineNC = { bg = c.grey, fg = c.dark_white },
        Tabline = { bg = c.grey, fg = c.darker_white },
        TablineFill = { bg = c.grey },
        TablineSel = { bg = c.black, fg = c.white, bold = true },
        Visual = { bg = c.grey, bold = true },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },

        Comment = { fg = c.darker_white, italic = config.italic_comments },
        Function = { fg = c.yellow, bold = config.bold_functions },
        String = { fg = c.green },
        Identifier = { fg = c.white },
        -- StorageClass = { fg = c.white, bold = true },
        Type = { fg = c.lime },
        Constant = { fg = c.pink },
        Boolean = { link = "Constant" },
        Character = { link = "String" },
        Number = { fg = c.orange },
        -- Exception = { fg = c.red },
        Label = { fg = c.dark_white, bold = true },
        Operator = { fg = c.red },
        Special = { fg = c.light_cyan },
        Delimiter = { fg = c.white },
        Statement = { link = "Keyword" },
        Keyword = { fg = c.orange },
        Structure = { fg = c.cyan },
        Todo = { fg = c.cyan },
        PreProc = { fg = c.dark_white, bold = true },

        Error = { fg = c.black, bg = c.red },
        Added = { fg = c.green },
        Removed = { fg = c.red },
        Changed = { fg = c.blue },

        -- Diagnostics
        DiagnosticError = { fg = c.red, bold = true },
        DiagnosticWarn = { fg = c.yellow, bold = true },
        DiagnosticInfo = { fg = c.blue, bold = true },
        DiagnosticHint = { fg = c.cyan, bold = true },
        DiagnosticOk = { fg = c.green, bold = true },
        DiagnosticVirtualTextError = { fg = c.red, bold = true },
        DiagnosticVirtualTextWarn = { fg = c.yellow, bold = true },
        DiagnosticVirtualTextInfo = { fg = c.blue, bold = true },
        DiagnosticVirtualTextHint = { fg = c.cyan, bold = true },
        DiagnosticVirtualTextOk = { fg = c.green, bold = true },
        DiagnosticUnderlineError = { underline = true, sp = c.red },
        DiagnosticUnderlineWarn = { underline = true, sp = c.yellow },
        DiagnosticUnderlineInfo = { underline = true, sp = c.blue },
        DiagnosticUnderlineHint = { underline = true, sp = c.cyan },
        DiagnosticUnderlineOk = { underline = true, sp = c.green },
        DiagnosticDeprecated = { strikethrough = true, fg = c.darker_white },
        DiagnosticUnused = { link = "Comment" },
        DiagnosticSignError = { fg = c.red, bold = true },
        DiagnosticSignWarn = { fg = c.yellow, bold = true },
        DiagnosticSignInfo = { fg = c.blue, bold = true },
        DiagnosticSignHint = { fg = c.cyan, bold = true },
        DiagnosticSignOk = { fg = c.green, bold = true },

        -- LSP
        LspCodeLens = { fg = c.light_grey },
        LspCodeLensSeparator = { fg = c.light_grey },
        LspInlayHint = { bg = c.dark_grey, fg = c.light_grey },
        LspReferenceText = { bg = c.grey },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },
        LspSignatureActiveParameter = { bg = c.grey, bold = true },

        -- Man
        manReference = { fg = c.blue },

        -- Treesitter
        ["@variable"] = { fg = c.white },
        ["@type.builtin"] = { link = "Type" },
        ["@attribute.builtin"] = { link = "@attribute" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@markup.heading.1"] = { fg = c.yellow, bold = true },
        ["@markup.heading.2"] = { fg = c.orange, bold = true },
        ["@markup.heading.3"] = { fg = c.red, bold = true },
        ["@markup.heading.4"] = { fg = c.pink },
        ["@markup.heading.5"] = { fg = c.blue },
        ["@markup.heading.6"] = { fg = c.green },
        ["@markup.link"] = { underline = false },
        ["@markup.link.vimdoc"] = { underline = true },
        ["@markup.link.label"] = { underline = true },
        ["@markup.link.url"] = { fg = c.blue },
        ["@markup.strikethrough"] = { strikethrough = true, fg = c.dark_white },
        ["@markup.quote"] = { fg = c.dark_white },
        ["@comment.error"] = { fg = c.red },
        ["@comment.warning"] = { fg = c.yellow },
        ["@comment.todo"] = { link = "Todo" },
        ["@comment.note"] = { fg = c.blue },

        -- LSP semantic tokens
        ["@lsp.type.operator"] = {},
        ["@lsp.type.formatSpecifier"] = { link = "Special" },
        ["@lsp.mod.callable"] = { link = "Function" },

        --- PLUGINS ---
        -- blink.cmp
        BlinkCmpMenu = { link = "NormalFloat" },
        BlinkCmpMenuBorder = { link = "FloatBorder" },
        BlinkCmpDocBorder = { link = "FloatBorder" },
        BlinkCmpLabelMatch = { link = "PmenuMatch" },
        BlinkCmpMenuSelection = { link = "PmenuSel" },
        BlinkCmpScrollBarThumb = { link = "PmenuThumb" },
        BlinkCmpScrollBarGutter = { link = "PmenuSbar" },
        BlinkCmpKind = { link = "NormalFloat" },
        BlinkCmpKindFolder = { fg = c.orange },
        BlinkCmpKindFile = { fg = c.white },
        BlinkCmpKindText = { fg = c.dark_white },
        BlinkCmpKindMethod = { fg = c.yellow },
        BlinkCmpKindFunction = { fg = c.yellow },
        BlinkCmpKindField = { fg = c.blue },
        BlinkCmpKindVariable = { fg = c.white },
        BlinkCmpKindProperty = { fg = c.light_cyan },
        BlinkCmpKindClass = { fg = c.lime },
        BlinkCmpKindStruct = { fg = c.lime },
        BlinkCmpKindEnum = { fg = c.lime },
        BlinkCmpKindInterface = { fg = c.lime },
        BlinkCmpKindModule = { fg = c.cyan },
        BlinkCmpKindPackage = { fg = c.orange },
        BlinkCmpKindNameSpace = { fg = c.cyan },
        BlinkCmpKindObject = { fg = c.blue },
        BlinkCmpKindValue = { fg = c.pink },
        BlinkCmpKindNumber = { fg = c.orange },
        BlinkCmpKindConstant = { fg = c.pink },
        BlinkCmpKindEnumMember = { fg = c.pink },
        BlinkCmpKindNull = { fg = c.white },
        BlinkCmpKindSnippet = { fg = c.dark_white },
        BlinkCmpKindColor = { fg = c.red },
        BlinkCmpKindKeyword = { fg = c.orange },
        BlinkCmpKindString = { fg = c.green },
        BlinkCmpKindTypeParameter = { fg = c.lime },
        BlinkCmpKindEvent = { fg = c.yellow },
        BlinkCmpKindOperator = { fg = c.red },
        BlinkCmpKindReference = { fg = c.light_cyan },

        -- lazy.nvim
        LazyButtonActive = { bg = c.grey, bold = true },
        LazyReasonEvent = { fg = c.yellow },
        LazyReasonFt = { fg = c.cyan },
        LazyReasonImport = { fg = c.green },

        -- leap.nvim
        LeapBackdrop = { fg = c.darker_white },

        -- mini.icons
        MiniIconsAzure = { fg = c.light_cyan },
        MiniIconsBlue = { fg = c.blue },
        MiniIconsCyan = { fg = c.cyan },
        MiniIconsGreen = { fg = c.green },
        MiniIconsGrey = { fg = c.dark_white },
        MiniIconsOrange = { fg = c.orange },
        MiniIconsPurple = { fg = c.pink },
        MiniIconsRed = { fg = c.red },
        MiniIconsYellow = { fg = c.yellow },

        -- treesitter-context
        TreesitterContextBottom = { underline = true, sp = c.light_grey },
        TreesitterContextLineNumber = { fg = c.darker_white },

        -- vim-illuminate
        IlluminatedWordText = { link = "LspReferenceText" },
        IlluminatedWordRead = { link = "LspReferenceRead" },
        IlluminatedWordWrite = { link = "LspReferenceWrite" },

        -- oil.nvim
        OilHidden = { fg = c.darker_white },
        OilLink = { fg = c.cyan },
        OilCreate = { fg = c.green },
        OilMove = { fg = c.blue },
        OilCopy = { fg = c.cyan },
        OilChange = { fg = c.yellow },
        OilRestore = { fg = c.green },
        OilPurge = { link = "Error" },

        -- lualine.nvim
        LuaLineDiffAdd = { link = "Added" },
        LuaLineDiffDelete = { link = "Removed" },
        LuaLineDiffChange = { link = "Changed" },
    }
end

---@param c lemons.Colors
local function set_terminal_colors(c)
    vim.g.terminal_color_0 = c.black
    vim.g.terminal_color_1 = c.red
    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_3 = c.yellow
    vim.g.terminal_color_4 = c.blue
    vim.g.terminal_color_5 = c.pink
    vim.g.terminal_color_6 = c.cyan
    vim.g.terminal_color_7 = c.dark_white
    vim.g.terminal_color_8 = c.light_grey
    vim.g.terminal_color_9 = c.red
    vim.g.terminal_color_10 = c.lime
    vim.g.terminal_color_11 = c.orange
    vim.g.terminal_color_12 = c.blue
    vim.g.terminal_color_13 = c.pink
    vim.g.terminal_color_14 = c.light_cyan
    vim.g.terminal_color_15 = c.white
end

local M = {}

---@param config lemons.Config
function M.set(config)
    local colors = require("lemons.colors").colors
    local highlights = get_highlights(config, colors)

    highlights = vim.tbl_extend("force", highlights, config.hl_override(colors))

    for name, val in pairs(highlights) do
        vim.api.nvim_set_hl(0, name, val)
    end

    if config.terminal_colors then
        set_terminal_colors(colors)
    end
end

return M

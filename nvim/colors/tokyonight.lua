-- Converted from NvChad base46 tokyonight theme to standalone Neovim colorscheme
-- Original credits: https://github.com/tiagovla/tokyonight.nvim

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "tokyonight"

local c = {
  white         = "#c0caf5",
  darker_black  = "#16161e",
  black         = "#1a1b26",
  black2        = "#1f2336",
  one_bg        = "#24283b",
  one_bg2       = "#414868",
  one_bg3       = "#353b45",
  grey          = "#40486a",
  grey_fg       = "#565f89",
  grey_fg2      = "#4f5779",
  light_grey    = "#545c7e",
  red           = "#f7768e",
  baby_pink     = "#DE8C92",
  pink          = "#ff75a0",
  line          = "#32333e",
  green         = "#9ece6a",
  vibrant_green = "#73daca",
  nord_blue     = "#80a8fd",
  blue          = "#7aa2f7",
  yellow        = "#e0af68",
  sun           = "#EBCB8B",
  purple        = "#bb9af7",
  dark_purple   = "#9d7cd8",
  teal          = "#1abc9c",
  orange        = "#ff9e64",
  cyan          = "#7dcfff",
  statusline_bg = "#1d1e29",
  lightbg       = "#32333e",
  pmenu_bg      = "#7aa2f7",
  folder_bg     = "#7aa2f7",

  -- base16
  base00 = "#1a1b26",
  base01 = "#16161e",
  base02 = "#2f3549",
  base03 = "#444b6a",
  base04 = "#787c99",
  base05 = "#a9b1d6",
  base06 = "#cbccd1",
  base07 = "#d5d6db",
  base08 = "#73daca",
  base09 = "#ff9e64",
  base0A = "#0db9d7",
  base0B = "#9ece6a",
  base0C = "#b4f9f8",
  base0D = "#2ac3de",
  base0E = "#bb9af7",
  base0F = "#f7768e",

  none = "NONE",
}

local hl = vim.api.nvim_set_hl

-- Editor
hl(0, "Normal",         { fg = c.base05, bg = c.black })
hl(0, "NormalFloat",    { fg = c.base05, bg = c.black2 })
hl(0, "NormalNC",       { fg = c.base05, bg = c.black })
hl(0, "ColorColumn",    { bg = c.black2 })
hl(0, "Cursor",         { fg = c.black, bg = c.white })
hl(0, "CursorLine",     { bg = c.one_bg })
hl(0, "CursorColumn",   { bg = c.one_bg })
hl(0, "CursorLineNr",   { fg = c.white })
hl(0, "LineNr",         { fg = c.grey_fg })
hl(0, "SignColumn",     { bg = c.black })
hl(0, "FoldColumn",     { fg = c.grey_fg, bg = c.black })
hl(0, "Folded",         { fg = c.grey_fg, bg = c.one_bg })
hl(0, "VertSplit",      { fg = c.line })
hl(0, "WinSeparator",   { fg = c.line })
hl(0, "EndOfBuffer",    { fg = c.black })
hl(0, "MatchParen",     { fg = c.none, bg = c.one_bg3 })
hl(0, "Conceal",        { fg = c.grey_fg })
hl(0, "NonText",        { fg = c.grey })
hl(0, "Whitespace",     { fg = c.grey })
hl(0, "SpecialKey",     { fg = c.grey })

-- Popup menu
hl(0, "Pmenu",          { fg = c.base05, bg = c.one_bg })
hl(0, "PmenuSel",       { fg = c.black, bg = c.pmenu_bg })
hl(0, "PmenuSbar",      { bg = c.one_bg2 })
hl(0, "PmenuThumb",     { bg = c.grey_fg })

-- Statusline
hl(0, "StatusLine",     { fg = c.base05, bg = c.statusline_bg })
hl(0, "StatusLineNC",   { fg = c.grey_fg, bg = c.statusline_bg })

-- Tabline
hl(0, "TabLine",        { fg = c.base05, bg = c.one_bg })
hl(0, "TabLineFill",    { bg = c.black })
hl(0, "TabLineSel",     { fg = c.black, bg = c.blue })

-- Search
hl(0, "Search",         { fg = c.black, bg = c.yellow })
hl(0, "IncSearch",      { fg = c.black, bg = c.orange })
hl(0, "CurSearch",      { fg = c.black, bg = c.orange })
hl(0, "Substitute",     { fg = c.black, bg = c.red })

-- Messages / UI
hl(0, "ModeMsg",        { fg = c.green })
hl(0, "MsgArea",        { fg = c.base05 })
hl(0, "MoreMsg",        { fg = c.blue })
hl(0, "Question",       { fg = c.blue })
hl(0, "ErrorMsg",       { fg = c.red })
hl(0, "WarningMsg",     { fg = c.yellow })
hl(0, "WildMenu",       { fg = c.black, bg = c.yellow })
hl(0, "Visual",         { bg = c.one_bg2 })
hl(0, "VisualNOS",      { bg = c.one_bg2 })

-- Diffs
hl(0, "DiffAdd",        { fg = c.green, bg = c.none })
hl(0, "DiffChange",     { fg = c.yellow, bg = c.none })
hl(0, "DiffDelete",     { fg = c.red, bg = c.none })
hl(0, "DiffText",       { fg = c.blue, bg = c.none })
hl(0, "Added",          { fg = c.green })
hl(0, "Changed",        { fg = c.yellow })
hl(0, "Removed",        { fg = c.red })

-- Spelling
hl(0, "SpellBad",       { undercurl = true, sp = c.red })
hl(0, "SpellCap",       { undercurl = true, sp = c.yellow })
hl(0, "SpellLocal",     { undercurl = true, sp = c.cyan })
hl(0, "SpellRare",      { undercurl = true, sp = c.purple })

-- Syntax
hl(0, "Comment",        { fg = c.grey_fg, italic = true })
hl(0, "Constant",       { fg = c.orange })
hl(0, "String",         { fg = c.green })
hl(0, "Character",      { fg = c.green })
hl(0, "Number",         { fg = c.orange })
hl(0, "Boolean",        { fg = c.orange })
hl(0, "Float",          { fg = c.orange })
hl(0, "Identifier",     { fg = c.base05 })
hl(0, "Function",       { fg = c.blue })
hl(0, "Statement",      { fg = c.purple })
hl(0, "Conditional",    { fg = c.purple })
hl(0, "Repeat",         { fg = c.purple })
hl(0, "Label",          { fg = c.purple })
hl(0, "Operator",       { fg = c.cyan })
hl(0, "Keyword",        { fg = c.purple })
hl(0, "Exception",      { fg = c.red })
hl(0, "PreProc",        { fg = c.cyan })
hl(0, "Include",        { fg = c.cyan })
hl(0, "Define",         { fg = c.cyan })
hl(0, "Macro",          { fg = c.cyan })
hl(0, "PreCondit",      { fg = c.cyan })
hl(0, "Type",           { fg = c.yellow })
hl(0, "StorageClass",   { fg = c.yellow })
hl(0, "Structure",      { fg = c.yellow })
hl(0, "Typedef",        { fg = c.yellow })
hl(0, "Special",        { fg = c.blue })
hl(0, "SpecialChar",    { fg = c.orange })
hl(0, "Tag",            { fg = c.red })
hl(0, "Delimiter",      { fg = c.base05 })
hl(0, "SpecialComment", { fg = c.grey_fg, italic = true })
hl(0, "Debug",          { fg = c.red })
hl(0, "Underlined",     { underline = true })
hl(0, "Ignore",         { fg = c.grey })
hl(0, "Error",          { fg = c.red })
hl(0, "Todo",           { fg = c.yellow, bold = true })

-- Treesitter (from polish_hl)
hl(0, "@variable",              { fg = c.base05 })
hl(0, "@punctuation.bracket",   { fg = c.purple })
hl(0, "@function.method.call",  { fg = c.red })
hl(0, "@function.call",         { fg = c.blue })
hl(0, "@constant",              { fg = c.orange })
hl(0, "@variable.parameter",    { fg = c.orange })

-- Additional treesitter groups
hl(0, "@string",                { fg = c.green })
hl(0, "@number",                { fg = c.orange })
hl(0, "@float",                 { fg = c.orange })
hl(0, "@boolean",               { fg = c.orange })
hl(0, "@keyword",               { fg = c.purple })
hl(0, "@keyword.return",        { fg = c.purple })
hl(0, "@keyword.function",      { fg = c.purple })
hl(0, "@keyword.operator",      { fg = c.cyan })
hl(0, "@conditional",           { fg = c.purple })
hl(0, "@repeat",                { fg = c.purple })
hl(0, "@function",              { fg = c.blue })
hl(0, "@function.builtin",      { fg = c.cyan })
hl(0, "@method",                { fg = c.blue })
hl(0, "@type",                  { fg = c.yellow })
hl(0, "@type.builtin",          { fg = c.yellow })
hl(0, "@field",                 { fg = c.base05 })
hl(0, "@property",              { fg = c.base05 })
hl(0, "@namespace",             { fg = c.base05 })
hl(0, "@include",               { fg = c.cyan })
hl(0, "@operator",              { fg = c.cyan })
hl(0, "@punctuation.delimiter", { fg = c.base05 })
hl(0, "@punctuation.special",   { fg = c.cyan })
hl(0, "@comment",               { fg = c.grey_fg, italic = true })
hl(0, "@tag",                   { fg = c.red })
hl(0, "@tag.attribute",         { fg = c.yellow })
hl(0, "@tag.delimiter",         { fg = c.base05 })

-- LSP
hl(0, "DiagnosticError",            { fg = c.red })
hl(0, "DiagnosticWarn",             { fg = c.yellow })
hl(0, "DiagnosticInfo",             { fg = c.cyan })
hl(0, "DiagnosticHint",             { fg = c.vibrant_green })
hl(0, "DiagnosticUnderlineError",   { undercurl = true, sp = c.red })
hl(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = c.yellow })
hl(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = c.cyan })
hl(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = c.vibrant_green })
hl(0, "LspReferenceText",           { bg = c.one_bg2 })
hl(0, "LspReferenceRead",           { bg = c.one_bg2 })
hl(0, "LspReferenceWrite",          { bg = c.one_bg2 })

-- GitSigns
hl(0, "GitSignsAdd",    { fg = c.green })
hl(0, "GitSignsChange", { fg = c.yellow })
hl(0, "GitSignsDelete", { fg = c.red })

-- Telescope
hl(0, "TelescopeBorder",         { fg = c.line })
hl(0, "TelescopePromptBorder",   { fg = c.line })
hl(0, "TelescopeResultsBorder",  { fg = c.line })
hl(0, "TelescopePreviewBorder",  { fg = c.line })
hl(0, "TelescopeSelection",      { fg = c.white, bg = c.one_bg })
hl(0, "TelescopeSelectionCaret", { fg = c.blue })
hl(0, "TelescopeMatching",       { fg = c.yellow })
hl(0, "TelescopePromptPrefix",   { fg = c.blue })

-- NvimTree
hl(0, "NvimTreeFolderIcon",    { fg = c.folder_bg })
hl(0, "NvimTreeFolderName",    { fg = c.folder_bg })
hl(0, "NvimTreeRootFolder",    { fg = c.red })
hl(0, "NvimTreeEmptyFolderName",{ fg = c.grey_fg })
hl(0, "NvimTreeOpenedFolderName",{ fg = c.yellow })
hl(0, "NvimTreeNormal",        { fg = c.base05, bg = c.darker_black })
hl(0, "NvimTreeGitDirty",      { fg = c.red })
hl(0, "NvimTreeGitNew",        { fg = c.green })
hl(0, "NvimTreeGitDeleted",    { fg = c.red })
hl(0, "NvimTreeSpecialFile",   { fg = c.yellow })
hl(0, "NvimTreeIndentMarker",  { fg = c.grey })

-- indent-blankline
hl(0, "IblIndent",     { fg = c.line })
hl(0, "IblScope",      { fg = c.grey_fg })
hl(0, "IndentBlanklineChar",        { fg = c.line })
hl(0, "IndentBlanklineContextChar", { fg = c.grey_fg })

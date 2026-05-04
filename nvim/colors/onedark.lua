-- Converted from NvChad base46 onedark theme to standalone Neovim colorscheme
-- Original credits: https://github.com/one-dark

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "onedark"
local c = {
  white         = "#abb2bf",
  darker_black  = "#1b1f27",
  black         = "#1e222a",
  black2        = "#252931",
  one_bg        = "#282c34",
  one_bg2       = "#353b45",
  one_bg3       = "#373b43",
  grey          = "#42464e",
  grey_fg       = "#565c64",
  grey_fg2      = "#6f737b",
  light_grey    = "#6f737b",
  red           = "#e06c75",
  baby_pink     = "#DE8C92",
  pink          = "#ff75a0",
  line          = "#31353d",
  green         = "#98c379",
  vibrant_green = "#7eca9c",
  nord_blue     = "#81A1C1",
  blue          = "#61afef",
  yellow        = "#e7c787",
  sun           = "#EBCB8B",
  purple        = "#de98fd",
  dark_purple   = "#c882e7",
  teal          = "#519ABA",
  orange        = "#fca2aa",
  cyan          = "#a3b8ef",
  statusline_bg = "#22262e",
  lightbg       = "#2d3139",
  pmenu_bg      = "#61afef",
  folder_bg     = "#61afef",

  -- base16
  base00 = "#1e222a",
  base01 = "#353b45",
  base02 = "#3e4451",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",

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
hl(0, "DiffAdd",        { fg = c.green })
hl(0, "DiffChange",     { fg = c.yellow })
hl(0, "DiffDelete",     { fg = c.red })
hl(0, "DiffText",       { fg = c.blue })
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
hl(0, "Constant",       { fg = c.base09 })
hl(0, "String",         { fg = c.green })
hl(0, "Character",      { fg = c.green })
hl(0, "Number",         { fg = c.base09 })
hl(0, "Boolean",        { fg = c.base09 })
hl(0, "Float",          { fg = c.base09 })
hl(0, "Identifier",     { fg = c.base05 })
hl(0, "Function",       { fg = c.blue })
hl(0, "Statement",      { fg = c.base0E })
hl(0, "Conditional",    { fg = c.base0E })
hl(0, "Repeat",         { fg = c.base0E })
hl(0, "Label",          { fg = c.base0E })
hl(0, "Operator",       { fg = c.base0C })
hl(0, "Keyword",        { fg = c.base0E })
hl(0, "Exception",      { fg = c.red })
hl(0, "PreProc",        { fg = c.base0C })
hl(0, "Include",        { fg = c.base0C })
hl(0, "Define",         { fg = c.base0C })
hl(0, "Macro",          { fg = c.base0C })
hl(0, "PreCondit",      { fg = c.base0C })
hl(0, "Type",           { fg = c.base0A })
hl(0, "StorageClass",   { fg = c.base0A })
hl(0, "Structure",      { fg = c.base0A })
hl(0, "Typedef",        { fg = c.base0A })
hl(0, "Special",        { fg = c.blue })
hl(0, "SpecialChar",    { fg = c.base09 })
hl(0, "Tag",            { fg = c.red })
hl(0, "Delimiter",      { fg = c.base05 })
hl(0, "SpecialComment", { fg = c.grey_fg, italic = true })
hl(0, "Debug",          { fg = c.red })
hl(0, "Underlined",     { underline = true })
hl(0, "Ignore",         { fg = c.grey })
hl(0, "Error",          { fg = c.red })
hl(0, "Todo",           { fg = c.yellow, bold = true })

-- Treesitter
hl(0, "@variable",              { fg = c.base05 })
hl(0, "@punctuation.bracket",   { fg = c.purple })
hl(0, "@function.method.call",  { fg = c.red })
hl(0, "@function.call",         { fg = c.blue })
hl(0, "@constant",              { fg = c.base09 })
hl(0, "@variable.parameter",    { fg = c.base09 })
hl(0, "@string",                { fg = c.green })
hl(0, "@number",                { fg = c.base09 })
hl(0, "@float",                 { fg = c.base09 })
hl(0, "@boolean",               { fg = c.base09 })
hl(0, "@keyword",               { fg = c.base0E })
hl(0, "@keyword.return",        { fg = c.base0E })
hl(0, "@keyword.function",      { fg = c.base0E })
hl(0, "@keyword.operator",      { fg = c.base0C })
hl(0, "@conditional",           { fg = c.base0E })
hl(0, "@repeat",                { fg = c.base0E })
hl(0, "@function",              { fg = c.blue })
hl(0, "@function.builtin",      { fg = c.base0C })
hl(0, "@method",                { fg = c.blue })
hl(0, "@type",                  { fg = c.base0A })
hl(0, "@type.builtin",          { fg = c.base0A })
hl(0, "@field",                 { fg = c.base05 })
hl(0, "@property",              { fg = c.base05 })
hl(0, "@namespace",             { fg = c.base05 })
hl(0, "@include",               { fg = c.base0C })
hl(0, "@operator",              { fg = c.base0C })
hl(0, "@punctuation.delimiter", { fg = c.base05 })
hl(0, "@punctuation.special",   { fg = c.base0C })
hl(0, "@comment",               { fg = c.grey_fg, italic = true })
hl(0, "@tag",                   { fg = c.red })
hl(0, "@tag.attribute",         { fg = c.base0A })
hl(0, "@tag.delimiter",         { fg = c.base05 })

-- LSP
hl(0, "DiagnosticError",          { fg = c.red })
hl(0, "DiagnosticWarn",           { fg = c.yellow })
hl(0, "DiagnosticInfo",           { fg = c.cyan })
hl(0, "DiagnosticHint",           { fg = c.vibrant_green })
hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = c.cyan })
hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = c.vibrant_green })
hl(0, "LspReferenceText",         { bg = c.one_bg2 })
hl(0, "LspReferenceRead",         { bg = c.one_bg2 })
hl(0, "LspReferenceWrite",        { bg = c.one_bg2 })

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
hl(0, "NvimTreeFolderIcon",      { fg = c.folder_bg })
hl(0, "NvimTreeFolderName",      { fg = c.folder_bg })
hl(0, "NvimTreeRootFolder",      { fg = c.red })
hl(0, "NvimTreeEmptyFolderName", { fg = c.grey_fg })
hl(0, "NvimTreeOpenedFolderName",{ fg = c.yellow })
hl(0, "NvimTreeNormal",          { fg = c.base05, bg = c.darker_black })
hl(0, "NvimTreeGitDirty",        { fg = c.red })
hl(0, "NvimTreeGitNew",          { fg = c.green })
hl(0, "NvimTreeGitDeleted",      { fg = c.red })
hl(0, "NvimTreeSpecialFile",     { fg = c.yellow })
hl(0, "NvimTreeIndentMarker",    { fg = c.grey })

-- indent-blankline
hl(0, "IblIndent",                  { fg = c.line })
hl(0, "IblScope",                   { fg = c.grey_fg })
hl(0, "IndentBlanklineChar",        { fg = c.line })
hl(0, "IndentBlanklineContextChar", { fg = c.grey_fg })

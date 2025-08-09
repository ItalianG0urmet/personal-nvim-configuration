-- core/highlight.lua jetbrains colors
local hl = vim.api.nvim_set_hl

local palette = {
  bg        = "#000000",
  fg        = "#A9B7C6",
  comment   = "#808080",
  keyword   = "#CC7832",
  func      = "#FFC66D",
  type      = "#9876AA",
  string    = "#6A8759",
  number    = "#6897BB",
  const     = "#9876AA",
  gutter    = "#5A5A5A",
  cursorln  = "#202020",
  visualbg  = "#404040",
}

hl(0, "Normal",           { fg = palette.fg, bg = palette.bg })
hl(0, "NormalNC",         { fg = palette.fg, bg = palette.bg })
hl(0, "CursorLine",       { bg = palette.cursorln })
hl(0, "LineNr",           { fg = palette.gutter, bg = "#101010" })
hl(0, "CursorLineNr",     { fg = "#FFFFFF", bg = "#202020", bold = true })
hl(0, "MatchParen",       { fg = "#FFFFFF", bg = "#3A3A3A" })
hl(0, "Visual",           { bg = palette.visualbg })
hl(0, "Search",           { bg = "#5F5F00" })
hl(0, "IncSearch",        { bg = "#FFFF00", fg = "#000000" })
hl(0, "ErrorMsg",         { fg = "#FF0000", bg = "#2A0000" })
hl(0, "Todo",             { fg = "#000000", bg = "#FFFF00" })

hl(0, "Comment",          { fg = palette.comment, italic = true })
hl(0, "Keyword",          { fg = palette.keyword, bold = true })
hl(0, "Statement",        { fg = palette.keyword, bold = true })
hl(0, "Number",           { fg = palette.number })
hl(0, "String",           { fg = palette.string })
hl(0, "Identifier",       { fg = palette.fg })
hl(0, "Function",         { fg = palette.func, bold = true })
hl(0, "Type",             { fg = palette.type })
hl(0, "Constant",         { fg = palette.const })
hl(0, "PreProc",          { fg = "#BBB529" })
hl(0, "Operator",         { fg = palette.fg })
hl(0, "Special",          { fg = palette.fg })

hl(0, "@comment",         { fg = palette.comment, italic = true })
hl(0, "@keyword",         { fg = palette.keyword, bold = true })
hl(0, "@statement",       { fg = palette.keyword })
hl(0, "@function",        { fg = palette.func })
hl(0, "@method",          { fg = palette.func })
hl(0, "@type",            { fg = palette.type })
hl(0, "@variable",        { fg = palette.fg })
hl(0, "@constant",        { fg = palette.const })
hl(0, "@string",          { fg = palette.string })
hl(0, "@number",          { fg = palette.number })
hl(0, "@parameter",       { fg = palette.fg })
hl(0, "@property",        { fg = palette.fg })
hl(0, "@constructor",     { fg = palette.func })

hl(0, "Pmenu",            { bg = "#181818", fg = palette.fg })
hl(0, "PmenuSel",         { bg = "#303030", fg = palette.fg, bold = true })
hl(0, "FloatBorder",      { fg = palette.gutter })
hl(0, "NormalFloat",      { bg = "#101010", fg = palette.fg })
hl(0, "TelescopeBorder",  { fg = palette.gutter })
hl(0, "CmpItemKindFunction", { fg = palette.func })
hl(0, "CmpItemKindMethod",   { fg = palette.func })
hl(0, "DiagnosticError",  { fg = "#FF6B6B" })
hl(0, "DiagnosticWarn",   { fg = "#FFD866" })
hl(0, "DiagnosticInfo",   { fg = "#7AA2F7" })
hl(0, "DiagnosticHint",   { fg = "#B2B2FF" })
hl(0, "LspInlayHint",     { fg = "#5A5A5A", italic = true })

hl(0, "IndentBlanklineIndent",  { fg = "#3A3A3A" })
hl(0, "IndentBlanklineContext", { fg = palette.keyword, bold = true })
hl(0, "ExtraWhitespace",        { bg = "#FF0000" })

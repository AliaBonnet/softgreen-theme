-- satzfarben_gruen.lua
--
-- Install: drop this file into ~/.config/nvim/colors/satzfarben_gruen.lua
-- Use:     :colorscheme satzfarben_gruen   (or vim.cmd.colorscheme("satzfarben_gruen"))

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "light"
vim.g.colors_name = "satzfarben_gruen"

-- ─────────────────────────────────────────────────────────────
-- Palette
-- ─────────────────────────────────────────────────────────────
local bg = "#f0f0c8" -- (theme background)
local bg_dim = "#DCE6AE" -- statusline/sidebars
local bg_float = "#E2EABA" -- popup/float background
local bg_selection = "#D2DE9C" -- visual selection / cursorline
local bg_search = "#D7C98A" -- search highlight (warm gold)
local border = "#B9C68C" -- line numbers / inactive

local fg = "#2F3B1C" -- (main text)
local fg_dim = "#5E6B3E" -- (line numbers, non-text)
local fg_faint = "#8B9568" -- placeholders, whitespace chars

local olive = "#6B5818" -- keywords
local rose = "#A84357" --- strings
local terracotta = "#A85A2E" -- functions
local forest = "#355C1E" -- types
local mustard = "#7A5E12" --  numbers/booleans
local pink = "#B14A72" -- constants
local teal = "#1F7A7A" -- identifiers/variables
local mauve = "#8A3960" -- warnings/special
local sage = "#6E7A52" --  comments
local luhblue = "#00519E" --accents, links, matching brackets

local err = "#B23A2A" -- error red
local hint = "#5E6B3E" --  hints

-- ─────────────────────────────────────────────────────────────
-- Helper
-- ─────────────────────────────────────────────────────────────
local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ─────────────────────────────────────────────────────────────
-- Editor UI
-- ─────────────────────────────────────────────────────────────
hi("Normal", { fg = fg, bg = bg })
hi("NormalFloat", { fg = fg, bg = bg_float })
hi("NormalNC", { fg = fg, bg = bg })
hi("FloatBorder", { fg = border, bg = bg_float })
hi("FloatTitle", { fg = luhblue, bg = bg_float, bold = true })

hi("Cursor", { fg = bg, bg = fg })
hi("CursorLine", { bg = bg_selection })
hi("CursorLineNr", { fg = luhblue, bold = true })
hi("CursorColumn", { bg = bg_selection })
hi("ColorColumn", { bg = bg_selection })

hi("LineNr", { fg = border })
hi("LineNrAbove", { fg = border })
hi("LineNrBelow", { fg = border })
hi("SignColumn", { fg = fg_dim, bg = bg })
hi("Folded", { fg = fg_dim, bg = bg_dim, italic = true })
hi("FoldColumn", { fg = border, bg = bg })

hi("VertSplit", { fg = border, bg = bg })
hi("WinSeparator", { fg = border, bg = bg })

hi("StatusLine", { fg = fg, bg = bg_dim })
hi("StatusLineNC", { fg = fg_dim, bg = bg_dim })
hi("TabLine", { fg = fg_dim, bg = bg_dim })
hi("TabLineFill", { bg = bg_dim })
hi("TabLineSel", { fg = bg, bg = luhblue, bold = true })

hi("Pmenu", { fg = fg, bg = bg_float })
hi("PmenuSel", { fg = bg, bg = luhblue, bold = true })
hi("PmenuSbar", { bg = bg_dim })
hi("PmenuThumb", { bg = border })
hi("PmenuKind", { fg = teal, bg = bg_float })
hi("PmenuKindSel", { fg = bg, bg = luhblue })
hi("PmenuExtra", { fg = fg_dim, bg = bg_float })

hi("Visual", { bg = bg_selection })
hi("VisualNOS", { bg = bg_selection })
hi("Search", { fg = fg, bg = bg_search })
hi("IncSearch", { fg = bg, bg = terracotta, bold = true })
hi("CurSearch", { fg = bg, bg = terracotta, bold = true })
hi("MatchParen", { fg = luhblue, bold = true, underline = true })

hi("Directory", { fg = luhblue })
hi("Title", { fg = terracotta, bold = true })
hi("WildMenu", { fg = bg, bg = luhblue })

hi("NonText", { fg = fg_faint })
hi("Whitespace", { fg = fg_faint })
hi("SpecialKey", { fg = fg_faint })
hi("EndOfBuffer", { fg = bg_dim })

hi("Question", { fg = forest })
hi("MoreMsg", { fg = forest })
hi("ModeMsg", { fg = fg, bold = true })
hi("WarningMsg", { fg = mauve, bold = true })
hi("ErrorMsg", { fg = err, bold = true })

hi("DiffAdd", { bg = "#CFE0AC" })
hi("DiffChange", { bg = "#E8D699" })
hi("DiffDelete", { fg = err, bg = "#E3C8B8" })
hi("DiffText", { bg = "#DEBE7E", bold = true })

hi("SpellBad", { sp = err, undercurl = true })
hi("SpellCap", { sp = mustard, undercurl = true })
hi("SpellLocal", { sp = teal, undercurl = true })
hi("SpellRare", { sp = mauve, undercurl = true })

-- ─────────────────────────────────────────────────────────────
-- Syntax (classic groups)
-- ─────────────────────────────────────────────────────────────
hi("Comment", { fg = sage, italic = true })

hi("Constant", { fg = pink })
hi("String", { fg = rose })
hi("Character", { fg = rose })
hi("Number", { fg = mustard })
hi("Boolean", { fg = mustard, bold = true })
hi("Float", { fg = mustard })

hi("Identifier", { fg = teal })
hi("Function", { fg = terracotta, bold = true })

hi("Statement", { fg = olive, bold = true })
hi("Conditional", { fg = olive, bold = true })
hi("Repeat", { fg = olive, bold = true })
hi("Label", { fg = olive })
hi("Operator", { fg = fg })
hi("Keyword", { fg = olive, bold = true })
hi("Exception", { fg = err, bold = true })

hi("PreProc", { fg = mauve })
hi("Include", { fg = mauve })
hi("Define", { fg = mauve })
hi("Macro", { fg = mauve })
hi("PreCondit", { fg = mauve })

hi("Type", { fg = forest, bold = true })
hi("StorageClass", { fg = forest })
hi("Structure", { fg = forest })
hi("Typedef", { fg = forest })

hi("Special", { fg = mauve })
hi("SpecialChar", { fg = mauve })
hi("Tag", { fg = luhblue })
hi("Delimiter", { fg = fg_dim })
hi("SpecialComment", { fg = sage, bold = true })
hi("Debug", { fg = err })

hi("Underlined", { fg = luhblue, underline = true })
hi("Ignore", { fg = fg_faint })
hi("Error", { fg = err, bold = true })
hi("Todo", { fg = bg, bg = mustard, bold = true })

-- ─────────────────────────────────────────────────────────────
-- Treesitter (nvim-treesitter highlight groups)
-- ─────────────────────────────────────────────────────────────
hi("@variable", { fg = fg })
hi("@variable.builtin", { fg = teal, italic = true })
hi("@variable.parameter", { fg = teal })
hi("@variable.member", { fg = teal })

hi("@constant", { fg = pink })
hi("@constant.builtin", { fg = pink, bold = true })
hi("@constant.macro", { fg = mauve })

hi("@string", { fg = rose })
hi("@string.escape", { fg = terracotta, bold = true })
hi("@string.regexp", { fg = mauve })
hi("@character", { fg = rose })

hi("@number", { fg = mustard })
hi("@boolean", { fg = mustard, bold = true })
hi("@float", { fg = mustard })

hi("@function", { fg = terracotta, bold = true })
hi("@function.builtin", { fg = terracotta, italic = true })
hi("@function.macro", { fg = mauve })
hi("@method", { fg = terracotta, bold = true })
hi("@constructor", { fg = forest })

hi("@keyword", { fg = olive, bold = true })
hi("@keyword.function", { fg = olive, bold = true })
hi("@keyword.return", { fg = olive, bold = true })
hi("@keyword.operator", { fg = olive })
hi("@conditional", { fg = olive, bold = true })
hi("@repeat", { fg = olive, bold = true })

hi("@operator", { fg = fg })
hi("@punctuation.delimiter", { fg = fg_dim })
hi("@punctuation.bracket", { fg = fg_dim })
hi("@punctuation.special", { fg = mauve })

hi("@type", { fg = forest, bold = true })
hi("@type.builtin", { fg = forest, italic = true })
hi("@attribute", { fg = mauve })
hi("@property", { fg = teal })

hi("@comment", { fg = sage, italic = true })
hi("@comment.todo", { fg = bg, bg = mustard, bold = true })
hi("@comment.error", { fg = bg, bg = err, bold = true })

hi("@tag", { fg = luhblue })
hi("@tag.attribute", { fg = teal })
hi("@tag.delimiter", { fg = fg_dim })

hi("@markup.heading", { fg = terracotta, bold = true })
hi("@markup.strong", { fg = fg, bold = true })
hi("@markup.italic", { fg = fg, italic = true })
hi("@markup.underline", { fg = luhblue, underline = true })
hi("@markup.link", { fg = luhblue, underline = true })
hi("@markup.link.url", { fg = luhblue, underline = true })
hi("@markup.raw", { fg = rose })
hi("@markup.list", { fg = olive })

-- LaTeX-specific (useful given vimtex-heavy workflows)
hi("texCmd", { fg = olive, bold = true })
hi("texMathZoneX", { fg = teal })
hi("texMathZoneA", { fg = teal })
hi("texMath", { fg = teal })
hi("texSection", { fg = terracotta, bold = true })
hi("texSectionMark", { fg = terracotta, bold = true })
hi("texStatement", { fg = olive })
hi("texDelimiter", { fg = fg_dim })
hi("texSpecialChar", { fg = mauve })

-- ─────────────────────────────────────────────────────────────
-- LSP
-- ─────────────────────────────────────────────────────────────
hi("DiagnosticError", { fg = err })
hi("DiagnosticWarn", { fg = mauve })
hi("DiagnosticInfo", { fg = luhblue })
hi("DiagnosticHint", { fg = hint })

hi("DiagnosticUnderlineError", { sp = err, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = mauve, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = luhblue, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = hint, undercurl = true })

hi("LspReferenceText", { bg = bg_selection })
hi("LspReferenceRead", { bg = bg_selection })
hi("LspReferenceWrite", { bg = bg_search })

hi("LspInlayHint", { fg = fg_faint, bg = bg_dim, italic = true })

-- ─────────────────────────────────────────────────────────────
-- Common plugins (Telescope, nvim-cmp, gitsigns, which-key)
-- ─────────────────────────────────────────────────────────────
hi("TelescopeBorder", { fg = border, bg = bg_float })
hi("TelescopeNormal", { fg = fg, bg = bg_float })
hi("TelescopeSelection", { bg = bg_selection, bold = true })
hi("TelescopeMatching", { fg = terracotta, bold = true })
hi("TelescopePromptBorder", { fg = luhblue, bg = bg_float })

hi("CmpItemAbbrMatch", { fg = terracotta, bold = true })
hi("CmpItemKindFunction", { fg = terracotta })
hi("CmpItemKindVariable", { fg = teal })
hi("CmpItemKindKeyword", { fg = olive })
hi("CmpItemKindText", { fg = fg_dim })

hi("GitSignsAdd", { fg = forest })
hi("GitSignsChange", { fg = mustard })
hi("GitSignsDelete", { fg = err })

hi("WhichKey", { fg = luhblue, bold = true })
hi("WhichKeyGroup", { fg = terracotta })
hi("WhichKeyDesc", { fg = fg })
hi("WhichKeyFloat", { bg = bg_float })

-- ─────────────────────────────────────────────────────────────
-- Terminal colors
-- ─────────────────────────────────────────────────────────────
vim.g.terminal_color_0 = bg_dim
vim.g.terminal_color_1 = err
vim.g.terminal_color_2 = forest
vim.g.terminal_color_3 = mustard
vim.g.terminal_color_4 = luhblue
vim.g.terminal_color_5 = mauve
vim.g.terminal_color_6 = teal
vim.g.terminal_color_7 = fg
vim.g.terminal_color_8 = fg_faint
vim.g.terminal_color_9 = "#C24A3A"
vim.g.terminal_color_10 = "#4A7A1E"
vim.g.terminal_color_11 = "#C27A3E"
vim.g.terminal_color_12 = "#1F6FBF"
vim.g.terminal_color_13 = "#C25A82"
vim.g.terminal_color_14 = "#2F9A9A"
vim.g.terminal_color_15 = fg

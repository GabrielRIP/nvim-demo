local M = {}

function M.get(cp)
   return {
      Constant = { fg = cp.peach }, -- (preferred) any constant

      String      = { fg = cp.green }, -- a string constant: "this is a string"
      Character   = { fg = cp.teal }, --  a character constant: 'c', '\n'
      Number      = { fg = cp.peach, bold = true }, --   a number constant: 234, 0xff
      Float       = { fg = cp.peach, bold = true }, --    a floating point constant: 2.3e10
      Boolean     = { fg = cp.red_2, bold = true }, --  a boolean constant: TRUE, false
      Identifier  = { fg = cp.teal_2 }, -- (preferred) any variable name
      Function    = { fg = cp.blue_1, italic = true, bold = true }, -- function name (also: methods for classes) Statement = { fg = cp.mauve }, -- (preferred) any statement
      Statement   = { fg = cp.red }, -- (preferred) any statement, tags html
      Conditional = { fg = cp.red }, --  if, then, else, endif, switch, etcp.
      Repeat      = { fg = cp.red }, --   for, do, while, etcp.
      Label       = { fg = cp.peach }, --    case, default, etcp.
      Operator    = { fg = cp.sky }, -- "sizeof", "+", "*", etcp.
      Keyword     = { fg = cp.pink_2 }, --  any other keyword
      -- Exception   = {}, --  try, catch, throw

      PreProc = { fg = cp.pink }, -- (preferred) generic Preprocessor
      Include = { fg = cp.pink }, --  preprocessor #include
      -- Define        = { }, --   preprocessor #define
      -- Macro         = { }, --    same as Define
      -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

      StorageClass = { fg = cp.teal_2 }, -- static, register, volatile, css
      Structure = { fg = cp.yellow }, --  struct, union, enum, etcp.
      Typedef = { fg = cp.yellow }, --  A typedef
      Special = { fg = cp.pink }, -- (preferred) any special symbol
      Type = { fg = cp.yellow_2 }, -- (preferred) int, long, char, etcp.
      -- SpecialChar   = { }, --  special character in a constant
      -- Tag           = { }, --    you can use CTRL-] on this
      -- Delimiter     = { }, --  character that needs attention
      -- Specialoverlay0= { }, -- special things inside a overlay0
      -- Debug         = { }, --    debugging statements

      Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
      Bold = { bold = true },
      Italic = { italic = true },
      -- ("Ignore", below, may be invisible...)
      -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

      Error = { fg = cp.red }, -- (preferred) any erroneous construct
      Todo = { bg = cp.yellow, fg = cp.base, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
      qfLineNr = { fg = cp.yellow },
      qfFileName = { fg = cp.blue },
      -- mkdHeading = { fg = cp.peach, style = { "bold" } },
      -- mkdCode = { bg = cp.terminal_black, fg = cp.text },
      mkdCodeDelimiter = { bg = cp.base, fg = cp.text },
      mkdCodeStart = { fg = cp.flamingo, bold = true },
      mkdCodeEnd = { fg = cp.flamingo, bold = true },
      -- mkdLink = { fg = cp.blue, underline = true },

      -- debugging
      debugPC = { bg = cp.crust }, -- used for highlighting the current line in terminal-debug
      debugBreakpoint = { bg = cp.base, fg = cp.overlay0 }, -- used for breakpoint colors in terminal-debug
      -- illuminate
      illuminatedWord = { bg = cp.surface1 },
      illuminatedCurWord = { bg = cp.surface1 },
      -- diff
      diffAdded = { fg = cp.green },
      diffRemoved = { fg = cp.red },
      diffChanged = { fg = cp.blue },
      diffOldFile = { fg = cp.yellow },
      diffNewFile = { fg = cp.peach },
      diffFile = { fg = cp.blue },
      diffLine = { fg = cp.overlay0 },
      diffIndexLine = { fg = cp.teal },
      DiffAdd = { fg = cp.green, bg = cp.base }, -- diff mode: Added line |diff.txt|
      DiffChange = { fg = cp.blue, bg = cp.base }, -- diff mode: Changed line |diff.txt|
      DiffDelete = { fg = cp.red, bg = cp.base }, -- diff mode: Deleted line |diff.txt|
      DiffText = { fg = cp.blue, bg = cp.base }, -- diff mode: Changed text within a changed line |diff.txt|
      -- NeoVim
      healthError = { fg = cp.red },
      healthSuccess = { fg = cp.teal },
      healthWarning = { fg = cp.yellow },
      -- misc

      -- glyphs
      GlyphPalette1 = { fg = cp.red },
      GlyphPalette2 = { fg = cp.teal },
      GlyphPalette3 = { fg = cp.yellow },
      GlyphPalette4 = { fg = cp.blue },
      GlyphPalette6 = { fg = cp.teal },
      GlyphPalette7 = { fg = cp.text },
      GlyphPalette9 = { fg = cp.red },

      Define = { link = "PreProc" }, -- preprocessor #define
      Macro = { link = "PreProc" }, -- same as Define
      PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

      SpecialChar = { link = "Special" }, -- special character in a constant
      Tag = { link = "Special" }, -- you can use CTRL-] on this
      Delimiter = { link = "Special" }, -- character that needs attention
      SpecialComment = { link = "Special" }, -- special things inside a comment
      Debug = { link = "Special" }, -- debugging statements
   }
end

return M

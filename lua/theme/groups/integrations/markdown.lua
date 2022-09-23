local M = {}

function M.get(cp)
   return {
      -- for links
      markdownUrl = { fg = cp.rosewater, italic = true, underline = true },
      markdownLinkText = { fg = cp.blue, underline = true },

      -- for list
      markdownListMarker = { fg = cp.teal, bold = true },

      -- for code and codeBlock
      markdownCode = { fg = cp.whiteSmoke },
      markdownCodeBlock = { fg = cp.whiteSmoke },
      markdowncodeDelimiter = { fg = cp.blue_2, bold = true },

      -- for titles
      markdownHeadingDelimiter = { fg = cp.red, bold = true }, -- example: #, ##, ###...
      markdownH1 = { fg = cp.red_2 },
      markdownH2 = { fg = cp.mauve },
      markdownH3 = { fg = cp.green },
      markdownH4 = { fg = cp.yellow },
      markdownH5 = { fg = cp.pink },
      markdownH6 = { fg = cp.teal },

      -- for text Bold, Italic and BoldItalic
      markdownBold = { fg = cp.peach, bold = true },
      markdownBoldDelimiter = { fg = cp.whiteSmoke },

      markdownBoldItalic = { fg = cp.peach, bold = true, italic = true },
      markdownBoldItalicDelimiter = { fg = cp.whiteSmoke },

      markdownItalic = { fg = cp.peach, italic = true },
      markdownItalicDelimiter = { fg = cp.whiteSmoke, bold = true },


   }
end

return M

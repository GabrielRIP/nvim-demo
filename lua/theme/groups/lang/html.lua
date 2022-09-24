local M = {}

function M.get(cp)
   return {
      -- inicio y final de < > en las etiquitas
      htmlTag = { fg = cp.red },
      htmlEndTag = { fg = cp.red },

      -- Nombre de las etiquetas
      htmlTagName = { fg = cp.red },
      htmlArg = { fg = cp.flamingo }, -- argumento de las tags

      -- TextContent de <title></title>
      htmlTitle = { fg = cp.blue_1, underline = true },

      -- TextContent de <a></a>
      htmlLink = { fg = cp.blue_3, underline = true },

      -- TextContent de los H1, H2 ...
      htmlH1 = { fg = cp.red_2, bold = true },
      htmlH2 = { fg = cp.blue_2, bold = true },
      htmlH3 = { fg = cp.blue_2, bold = true },
      htmlH4 = { fg = cp.blue_2, bold = true },
      htmlH5 = { fg = cp.blue_2, bold = true },
      htmlH6 = { fg = cp.blue_2, bold = true },

      -- para las etiquetas style y script
      htmlSpecialTagName = { fg = cp.dark_purple, bold = true },

      htmlSpecialChar = { fg = cp.teal_2 }, -- caracteres como &lt
   }
end

return M

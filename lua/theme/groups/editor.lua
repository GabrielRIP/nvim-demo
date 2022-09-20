local M = {}

function M.get(cp)
   return {
      CursorLineNR = { fg = cp.first_color, bold = true },
      LineNr = { fg = cp.overlay2 },
      CursorLine = { bg = cp.surface0 },
      SignColumn = { fg = cp.surface1 }, -- column where |signs| are displayed
      SignColumnSB = { bg = cp.crust, fg = cp.surface1 }, -- column where |signs| are displayed
   }
end

return M

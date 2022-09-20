local M = {}

function M.get(cp)
   return {
      VertSplit = { fg = cp.subtext0 }, -- the column separating vertically split windows

      CursorLineNR = { fg = cp.first_color, bold = true },
      LineNr = { fg = cp.overlay1 },
      CursorLine = { bg = cp.surface0 },
      SignColumn = { fg = cp.surface1 }, -- column where |signs| are displayed
      SignColumnSB = { bg = cp.crust, fg = cp.surface1 }, -- column where |signs| are displayed

      -- status line
      StatusLine = { fg = cp.text, bg = cp.mantle }, -- status line of current window
      StatusLineNC = { fg = cp.surface1, bg = cp.mantle }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
   }
end

return M

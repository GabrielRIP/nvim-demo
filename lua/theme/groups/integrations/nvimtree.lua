local M = {}

function M.get(cp)
   return {
      VertSplit = { fg = cp.subtext0 }, -- the column separating vertically split windows
   }
end

return M

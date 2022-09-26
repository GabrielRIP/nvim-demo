local M = {}

function M.get(cp)
   return {
      IndentBlanklineChar = { fg = cp.surface0 },
      IndentBlanklineContextChar = { fg = cp.text },
      IndentBlanklineContextStart = { sp = cp.text, underline = true },
   }
end

return M

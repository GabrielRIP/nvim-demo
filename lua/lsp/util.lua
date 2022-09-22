local signs = {
   Error = User.icons.diagnostic.error,
   Warn = User.icons.diagnostic.warning,
   Info = User.icons.diagnostic.info,
   Hint = User.icons.diagnostic.hint,
}

local U = {}

function U.icons_lsp()
   for type, icon in pairs(signs) do
      local hl = 'DiagnosticSign' .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
   end

   vim.diagnostic.config({
      signs = true,
      update_in_insert = false,
      underline = true,
      severity_sort = true,
      virtual_text = { source = false },
   })
end

return U

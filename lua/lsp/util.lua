local U = {}

function U.mason()
   local mason_ok, mason = pcall(require, 'mason')
   local mason_lsp_ok, mason_lsp = pcall(require, 'mason-lspconfig')
   if not mason_ok or not mason_lsp_ok then
      return
   end

   mason.setup({ ui = { border = 'rounded' } })

   mason_lsp.setup({
      ensure_installed = {
         'html-lsp', 'css-lsp', 'emmet-ls', 'typescript-language-server', 'eslint-lsp',
         'stylelint-lsp', 'json-lsp', 'lua-language-server', 'tailwindcss-language-server',
         'pyright', 'svelte-language-server', 'rust-analyzer', 'marksman', 'yaml-language-server',
         'clangd',
         -- 'chrome-debug-adapter', 'node-debug2-adapter'
      },
      automatic_installation = true,
   })
end

function U.icons_lsp()
   local signs = {
      Error = User.icons.diagnostic.error,
      Warn = User.icons.diagnostic.warning,
      Info = User.icons.diagnostic.info,
      Hint = User.icons.diagnostic.hint,
   }

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

U.on_attach = function(client, bufnr)
end

U.capabilities = vim.lsp.protocol.make_client_capabilities()

U.capabilities.textDocument.completion.completionItem = {
   documentationFormat = { "markdown", "plaintext" },
   snippetSupport = true,
   preselectSupport = true,
   insertReplaceSupport = true,
   labelDetailsSupport = true,
   deprecatedSupport = true,
   commitCharactersSupport = true,
   tagSupport = { valueSet = { 1 } },
   resolveSupport = {
      properties = {
         "documentation",
         "detail",
         "additionalTextEdits",
      },
   },
}
U.handlers = {
   ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
   ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' }),
   ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = true }),
}

return U

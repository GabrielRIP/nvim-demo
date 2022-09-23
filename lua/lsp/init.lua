require('lsp.util').mason()
require('lsp.util').icons_lsp()

-- Setup installer & lsp configs
local typescript_ok, typescript = pcall(require, 'typescript')
local present, lspconfig = pcall(require, "lspconfig")

if not present then
   return
end

local on_attach = require('lsp.util').on_attach
local capabilities = require('lsp.util').capabilities
local handlers = require('lsp.util').handlers

-- Config lsp servers
if typescript_ok then
   typescript.setup({
      disable_commands = false, -- prevent the plugin from creating Vim commands
      debug = false, -- enable debug logging for commands
      server = {
         capabilities = require('lsp.servers.tsserver').capabilities,
         handlers = handlers,
         on_attach = require('lsp.servers.tsserver').on_attach,
      }
   })
end

lspconfig.sumneko_lua.setup {
   handlers = handlers,
   on_attach = on_attach,
   settings = require('lsp.servers.sumneko_lua').settings,
}

lspconfig.tailwindcss.setup {
   root_dir = lspconfig.util.root_pattern('tailwind.config.js'),
   capabilities = require('lsp.servers.tailwindcss').capabilities,
   filetypes = require('lsp.servers.tailwindcss').filetypes,
   handlers = handlers,
   init_options = require('lsp.servers.tailwindcss').init_options,
   on_attach = require('lsp.servers.tailwindcss').on_attach,
   settings = require('lsp.servers.tailwindcss').settings,
}


lspconfig.eslint.setup {
   root_dir = lspconfig.util.root_pattern('.eslintrc.js', '.eslintrc.json', '.eslintrc.yaml'),
   capabilities = capabilities,
   handlers = handlers,
   on_attach = require('lsp.servers.eslint').on_attach,
   settings = require('lsp.servers.eslint').settings,
}

lspconfig.rust_analyzer.setup {
   handlers = handlers,
   on_attach = on_attach,
   capabilities = capabilities,
   settings = require('lsp.servers.rust_analyzer').settings,
}

lspconfig.pyright.setup {
   handlers = handlers,
   on_attach = on_attach,
   settings = require('lsp.servers.pyright').settings,
}

lspconfig.stylelint_lsp.setup {
   root_dir = lspconfig.util.root_pattern('.stylelintrc'),
   filetypes = { 'css', 'less', 'scss', 'sugarss', 'vue', 'wxss' },
   on_attach = on_attach,
   capabilities = capabilities,
   handlers = handlers,
}

lspconfig.emmet_ls.setup {
   filetypes = { 'html', 'css', 'sass', 'scss', 'less' },
   capabilities = capabilities,
   handlers = handlers,
}

lspconfig.yamlls.setup {
   on_attach = on_attach,
   capabilities = capabilities,
   handlers = handlers,
   settings = require('lsp.servers.yaml')
}

local servers = { 'html', 'cssls', 'svelte', 'jsonls', 'marksman', 'clangd' }

for _, lsp in ipairs(servers) do
   lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      handlers = handlers,
   }
end

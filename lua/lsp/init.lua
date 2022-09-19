-- Setup installer & lsp configs
local mason_ok, mason = pcall(require, 'mason')
local mason_lsp_ok, mason_lsp = pcall(require, 'mason-lspconfig')

if not mason_ok or not mason_lsp_ok then
  return
end

mason.setup({ ui = { border = 'rounded' } })

mason_lsp.setup({
  ensure_installed = {
    -- 'html-lsp', 'css-lsp', 'emmet-ls', 'typescript-language-server', 'eslint-lsp',
    -- 'stylelint-lsp', 'json-lsp',
    'lua-language-server',
    -- 'tailwindcss-language-server',
    -- 'marksman', 'pyright', 'svelte-language-server', 'rust-analyzer',
    -- 'chrome-debug-adapter', 'node-debug2-adapter'
  },
  automatic_installation = true,
})

local lspconfig = require("lspconfig")

local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' }),
  ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = true }),
}

local function on_attach(client, bufnr)
  -- set up buffer keymaps, etc.
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if cmp_nvim_lsp_ok then
  capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
end

-- Order matters

-- It enables tsserver automatically so no need to call lspconfig.tsserver.setup
lspconfig.sumneko_lua.setup {
  handlers = handlers,
  on_attach = on_attach,
  settings = require('lsp.servers.sumneko_lua').settings,
}

local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", "ts_ls", "eslint", "html", "cssls", "jsonls", "yamlls", "bashls",
    "pyright", "gopls", "rust_analyzer", "clangd", "solargraph", "dockerls", 
    "docker_compose_language_service", "marksman"
  },
  handlers = {
    -- Default handler for all servers
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function (_, bufnr)
          local map = function (mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
          end
          map("n", "gd", vim.lsp.buf.definition, "Go to definition")
          map("n", "K", vim.lsp.buf.hover, "Hover")
          map("n", "gi", vim.lsp.buf.implementation, "Implementation")
          map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
          map("n", "gr", vim.lsp.buf.references, "References")
          map("n", "<leader>f", function ()
            vim.lsp.buf.format({ async = true })
          end, "Format")
        end,
      })
    end,
    -- Custom configuration for lua_ls
    lua_ls = function ()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })
    end,
  },
})

return {
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

  { "rose-pine/neovim", name = "rose-pine" },

  { "mbbill/undotree", name = "undotree" },

  { "tpope/vim-fugitive", name = "fugitive" },

  { "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto',
          globalstatus = true,
          disabled_filetypes = { 
            statusline = { 'netrw', 'TelescopePrompt', 'neo-tree', 'NvimTree' },
            winbar = { 'netrw', 'NvimTree', 'TelescopePrompt', 'neo-tree' }, 
          },
        },
        sections = {
          lualine_a = { 'branch' },
          lualine_b = { 'filename' },
          lualine_c = {},
          lualine_x = {},
          lualine_y = { 
            function()
              local bufnr = vim.api.nvim_get_current_buf()
              local clients = vim.lsp.get_clients({ bufnr = bufnr })
              if #clients == 0 then return "So LSP" end
              local names = {}
              for _, client in ipairs(clients) do
                table.insert(names, client.name)
              end
              return "LSP: " .. table.concat(names, ", ")
            end,
          },
          lualine_z = { 'filetype' },
        },
        winbar = {
          lualine_a = { require('lualine.components.mode_indicator').mymode },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = { 'location' },
          lualine_z = { 'progress' },
        },
      })
    end
  }
}

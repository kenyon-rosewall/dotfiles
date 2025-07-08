function ColorMyNVim(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- Uncomment for transparency
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyNVim()

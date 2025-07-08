vim.env.PATH = table.concat({
  vim.fn.expand("$HOME/.asdf/shims"),
  vim.fn.expand("$HOME/.asdf/bin"),
  vim.fn.expand("$HOME/.npm-global/bin"),
  vim.fn.expand("$HOME/.yarn-global/bin"),
  vim.env.PATH,
}, ":")

require("kenyon")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search  = vim.fn.input("Grep > ") })
end)

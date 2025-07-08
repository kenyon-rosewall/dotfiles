local M = {}

local mode_map = {
  n = "NORMAL",
  i = "INSERT",
  v = "VISUAL",
  V = "VISUAL",
  [""] = "VISUAL", -- Ctrl-V (visual block)
  c = "COMMAND",
  R = "REPLACE",
  t = "TERMINAL",
}

M.mymode = function()
  local current = vim.api.nvim_get_mode().mode
  local labels = { "NORMAL", "INSERT", "VISUAL" }
  local active = mode_map[current] or "?"

  local parts = {}
  for _, label in ipairs(labels) do
    if label == active then
      table.insert(parts, "[" .. label .. "]")
    else
      table.insert(parts, " " .. label .. " ")
    end
  end
  return table.concat(parts, " ")
end

return M


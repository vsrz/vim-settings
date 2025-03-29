
--- Performs a zoom-in effect in Neovim.
---
function Zoom(step)
  step = step or 1
  local current_font = vim.api.nvim_command_output("GuiFont")

  local font_name = string.match(current_font, "(.*):.*") or 'Monospace'
  local font_size = string.match(current_font, ".*:h(%d+)") or 12
  local new_guifont = string.format("GuiFont! %s:h%d", font_name, font_size + step)
  vim.cmd(new_guifont)
end

vim.keymap.set('n', '<C-=>', '<cmd>lua Zoom()<CR>', { desc = 'Zoom In' })
vim.keymap.set('n', '<C-->', '<cmd>lua Zoom(-1)<CR>', { desc = 'Zoom Out' })


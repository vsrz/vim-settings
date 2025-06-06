
--- Performs a zoom-in effect in Neovim.
---
function Zoom(step)
  step = step or 1
  local current_font = vim.o.guifont

  local font_name = string.match(current_font, "(.*):.*") or 'Monospace'
  local font_size = string.match(current_font, ".*:h(%d+)") or 12
  local new_guifont = string.format("%s:h%d", font_name, font_size + step)
  vim.opt.guifont = new_guifont
end

vim.keymap.set('n', '<C-S-+>', '<cmd>lua Zoom(5)<CR>', { desc = 'Zoom In x5' })
vim.keymap.set('n', '<C-=>', '<cmd>lua Zoom()<CR>', { desc = 'Zoom In' })

vim.keymap.set('n', '<C-S-_>', '<cmd>lua Zoom(-5)<CR>', { desc = 'Zoom Out x5' })
vim.keymap.set('n', '<C-->', '<cmd>lua Zoom(-1)<CR>', { desc = 'Zoom Out' })


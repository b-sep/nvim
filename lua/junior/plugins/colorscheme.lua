local status_ok, quantum = pcall(require, 'quantum')
if not status_ok then
  return
end

quantum.setup({
  style = {
    italics = { -- whether to use italic for the following highlight groups
      comments = false,
      variables = false,
      functions = false,
      keywords = false,
    },
  },
  hide_end_of_buffer = true, -- whether to show hl-EndOfBuffer
})

vim.g.quantum_variant = 'dark'
vim.cmd([[colorscheme quantum]])

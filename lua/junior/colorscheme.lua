local status_ok, gh_theme = pcall(require, 'github-theme')
if not status_ok then
  return
end

gh_theme.setup({
  options = {
    styles = {
      comments = 'NONE',
      functions = 'NONE',
      keywords = 'NONE',
      variables = 'NONE',
    }
  }
})

vim.cmd('colorscheme github_dark')

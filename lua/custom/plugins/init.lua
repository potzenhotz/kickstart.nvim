-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  vim.api.nvim_create_augroup('neotree', {}),
  vim.api.nvim_create_autocmd('UiEnter', {
    desc = 'Open Neotree automatically',
    group = 'neotree',
    callback = function()
      if vim.fn.argc() == 0 then
        vim.cmd 'Neotree toggle'
      end
    end,
  }),
}

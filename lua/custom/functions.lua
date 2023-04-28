M = {}

function M.smart_quit(option)
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.api.nvim_buf_get_option(bufnr, "modified")
  if modified then
    vim.ui.input({
      prompt = "You have unsaved changes. Quit anyway? (y/n) ",
    }, function(input)
      if input == "y" then
        if option == "all" then
          vim.cmd "qa!"
        else
          vim.cmd "q!"
        end
      end
    end)
  else
    if option == "all" then
      vim.cmd "qa!"
    else
      vim.cmd "q!"
    end
  end
end

return M

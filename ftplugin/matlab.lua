print("detected matlab file!!")
local v = vim.opt_local
local autocmd = vim.api.nvim_create_autocmd
local bo = vim.bo
local current_buffer_path = vim.fn.expand("%")

-- local function mlint()
--   local handle = io.popen(string.format("mlint %s", current_buffer_path))
--   if handle ~= nil then
--     local output = handle:read("*a")
--     handle:close()
--     print(output)
--   end
-- end

autocmd(
  "BufWritePost",
  {
    command = ":make"
  }
)

v.makeprg = string.format("mlint -id %s %s", current_buffer_path, current_buffer_path)
bo.errorformat = "%-P========== %f ==========,%-G%>========== %s ==========,%-G%>L %l (C %c): MDOTM%m,L %l (C %c): %m,L %l (C %c-%*[0-9]): %m,%-Q"


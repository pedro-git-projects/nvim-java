require("core.set")
require("core.remap")

 local sep = package.config:sub(1, 1)
local lazypath = vim.fn.stdpath("data") .. sep .. "lazy" .. sep .. "lazy.nvim"
 
 if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
 vim.opt.rtp:prepend(lazypath)

 require("lazy").setup("plugins")

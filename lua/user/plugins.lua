local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.vim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
end

vim.cmd [[packadd packer.nvim]]

-- Autocommand that reloads neovim when you save the plugins.lua file
vim.cmd [[
    augroup pakcer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install Plugins
return packer.startup(function(use)
    
    use "wbthomason/packer.nvim"    -- Have packer manage itself
    use "nvim-lua/popup.nvim"       -- an implementation of Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"     -- useful lua functions used by lots of plugins

    -- automatically set up config after cloning packer.vim
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

# nvim config
lua config for neovim

a work in progress

Working off this playlist: https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ

# Issues
[RESOLVED] 2/16/21: The autocommand to download packer does not seem to be working

Use this command to fix it:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
<br>
<br>

[RESOLVED] 10/27/22: Issue with deprecation of `cmp_nvim_lsp.update_capabilities()` function used for lsp

The issue is caused by `update_capabilities` being depricated. To fix this issue on NVIM ver 0.8.0 and higher, 
change the line at the end of `/lua/user/lsp/handlers.lua` from 
```
M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
```
to 
```
M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
```
When tested, the new line did not work on NVIM ver 0.7.0, so I am leaving both in with one commented. Simply swap the commented 
line if needed for your version of NVIM.

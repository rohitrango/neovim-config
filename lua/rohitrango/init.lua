-- we will import mappings first and then packer
require("rohitrango.remap")
require("rohitrango.autocmd")

-- some miscellaneous extra stuff that is not an callback or keymapping
vim.opt.tabstop = 4       -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4    -- number of spaces used for autoindent
vim.opt.expandtab = true  -- convert tabs to spaces

-- package manager at the end
require("rohitrango.lazy")



require('chu.base')
require('chu.highlights')
require('chu.maps')
require('chu.plugins')

local has = vim.fn.has
local is_mac =  has "macunix"
local is_win = has "win32"

if is_mac then
    require('chu.macos')
end
if is_win then
    require('chu.windows')
end

print('init.lua loaded')

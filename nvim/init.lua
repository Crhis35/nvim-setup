require('crhis.base')
require('crhis.highlights')
require('crhis.maps')
require('crhis.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
	require('crhis.macos')
end
if is_win then
	require('crhis.windows')
end
if is_wsl == 1 then
	require('crhis.wsl')
end

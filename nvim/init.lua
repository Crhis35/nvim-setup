require('crhis.base')
require('crhis.highlights')
require('crhis.maps')
require('crhis.plugins')
local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('crhis.macos')
end
if is_win then
  require('crhis.windows')
end

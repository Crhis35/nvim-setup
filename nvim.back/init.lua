require('crhis.base')
require('crhis.highlights')
require('crhis.maps')
require('crhis.plugins')

local os = vim.loop.os_uname().sysname

if os == "Darwin" then
  require('crhis.macos')
elseif os == "Linux" then
  require('crhis.linux')
elseif os == "Windows_NT" then
  require('crhis.windows')
else
  error("Unknown OS")
end

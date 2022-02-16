local base = require("gruvbox.base")
local plugins = require("gruvbox.plugins.highlights")
local languages = require("gruvbox.languages")
local utils = require("gruvbox.utils")

local specs = { base, languages, plugins }
local spec = utils.merge(specs)

local M = {}
M.load = function()
  utils.highlights(spec)
end

M.export_to_buffer = function()
  utils.export_to_buffer(spec)
end

return M

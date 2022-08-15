
local status_ok, minimap = pcall(require, "minimap")
if not status_ok then
  return
end

minimap.setup()

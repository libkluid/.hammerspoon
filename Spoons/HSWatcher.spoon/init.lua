function on_hsconfg_loaded()
  hs.reload()
  hs.alert.show("hammerspoon reloaded")
end

local obj = {}

function obj:init()
  self.watcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", on_hsconfg_loaded)
end

function obj:start()
  self.watcher:start()
end

function obj:stop()
  self.watcher:stop()
end

return obj

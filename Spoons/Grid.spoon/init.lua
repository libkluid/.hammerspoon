local obj = {}

function obj:bindHotKeys(mapping)
    hs.hotkey.bindSpec(mapping["top"], function() self:top() end)
    hs.hotkey.bindSpec(mapping["right"], function() self:right() end)
    hs.hotkey.bindSpec(mapping["bottom"], function() self:bottom() end)
    hs.hotkey.bindSpec(mapping["left"], function() self:left() end)

    hs.hotkey.bindSpec(mapping["topLeft"], function() self:topLeft() end)
    hs.hotkey.bindSpec(mapping["topRight"], function() self:topRight() end)
    hs.hotkey.bindSpec(mapping["bottomLeft"], function() self:bottomLeft() end)
    hs.hotkey.bindSpec(mapping["bottomRight"], function() self:bottomRight() end)

    hs.hotkey.bindSpec(mapping["leftThird"], function() self:leftThird() end)
    hs.hotkey.bindSpec(mapping["centerThird"], function() self:centerThird() end)
    hs.hotkey.bindSpec(mapping["rightThird"], function() self:rightThird() end)
    hs.hotkey.bindSpec(mapping["leftTwoThird"], function() self:leftTwoThird() end)
    hs.hotkey.bindSpec(mapping["rightTwoThird"], function() self:rightTwoThird() end)

    hs.hotkey.bindSpec(mapping["center"], function() self:center() end)
    hs.hotkey.bindSpec(mapping["maximize"], function() self:maximize() end)
end

function isHorizontal(screen)
  return screen.w > screen.h
end

-- callback(screen: hs.geometry) -> hs.geometry
function gridWindow(win, callback)
    local screen = win:screen():frame()
    local frame = win:frame()

    local newframe = callback(screen)
    win:setFrame(newframe)
end

function obj:left()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.y,
            screen.w / 2,
            screen.h)
    end)
end

function obj:bottom()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.h / 2 + screen.y,
            screen.w,
            screen.h / 2)
    end)
end

function obj:top()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.y,
            screen.w,
            screen.h / 2)
    end)
end

function obj:right()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.w / 2 + screen.x,
            screen.y,
            screen.w / 2,
            screen.h)
    end)
end

function obj:topLeft()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.y,
            screen.w / 2,
            screen.h / 2)
    end)
end

function obj:topRight()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.w / 2 + screen.x,
            screen.y,
            screen.w / 2,
            screen.h / 2)
    end)
end

function obj:bottomLeft()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.h / 2 + screen.y,
            screen.w / 2,
            screen.h / 2)
    end)
end

function obj:bottomRight()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.w / 2 + screen.x,
            screen.h / 2 + screen.y,
            screen.w / 2,
            screen.h / 2)
    end)
end

function obj:center()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.w / 4 + screen.x,
            screen.h / 4 + screen.y,
            screen.w / 2,
            screen.h / 2)
    end)
end

function obj:maximize()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
        return hs.geometry.rect(
            screen.x,
            screen.y,
            screen.w,
            screen.h)
    end)
end

function obj:leftThird()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
      if isHorizontal(screen) then
        return hs.geometry.rect(
            screen.x + (screen.w * 0 / 3),
            screen.y,
            screen.w * 1 / 3,
            screen.h)
      else
        return hs.geometry.rect(
            screen.x,
            screen.y + (screen.h * 0 / 3),
            screen.w,
            screen.h * 1 / 3)
      end
    end)
end

function obj:centerThird()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
      if isHorizontal(screen) then
        return hs.geometry.rect(
            screen.x + (screen.w * 1 / 3),
            screen.y,
            screen.w * 1 / 3,
            screen.h)
      else
        print(screen.w)
        print(screen.h)
        return hs.geometry.rect(
            screen.x,
            screen.y + (screen.h * 1 / 3),
            screen.w,
            screen.h * 1 / 3)
      end
    end)
end

function obj:rightThird()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
      if isHorizontal(screen) then
        return hs.geometry.rect(
            screen.x + (screen.w * 2 / 3),
            screen.y,
            screen.w * 1 / 3,
            screen.h)
      else
        return hs.geometry.rect(
            screen.x,
            screen.y + (screen.h * 2 / 3),
            screen.w,
            screen.h * 1 / 3)
      end
    end)
end

function obj:leftTwoThird()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
      if isHorizontal(screen) then
        return hs.geometry.rect(
            screen.x + (screen.w * 0 / 3),
            screen.y,
            screen.w * 2 / 3,
            screen.h)
      else
        return hs.geometry.rect(
            screen.x,
            screen.y + (screen.h * 0 / 3),
            screen.w,
            screen.h * 2 / 3)
      end
    end)
end

function obj:rightTwoThird()
    local win = hs.window.focusedWindow()
    gridWindow(win, function(screen)
      if isHorizontal(screen) then
        return hs.geometry.rect(
            screen.x + (screen.w * 1 / 3),
            screen.y,
            screen.w * 2 / 3,
            screen.h)
      else
        return hs.geometry.rect(
            screen.x,
            screen.y + (screen.h * 1 / 3),
            screen.w,
            screen.h * 2 / 3)
      end
    end)
end

return obj


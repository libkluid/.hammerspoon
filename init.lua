hs.loadSpoon("Amphetamine")

hs.loadSpoon("HSWatcher")
spoon.HSWatcher:start()

hs.loadSpoon("Grid")
spoon.Grid:bindHotKeys({
    top = { { "alt", "ctrl" }, "Up" },
    right = { { "alt", "ctrl" }, "Right" },
    bottom = { { "alt", "ctrl" }, "Down" },
    left = { { "alt", "ctrl" }, "Left" },

    topLeft = { { "alt", "ctrl" }, "U" },
    topRight = { { "alt", "ctrl" }, "I" },
    bottomLeft = { { "alt", "ctrl" }, "J" },
    bottomRight = { { "alt", "ctrl" }, "K" },

    leftThird = { { "alt", "ctrl" }, "D" },
    centerThird = { { "alt", "ctrl" }, "F" },
    rightThird = { { "alt", "ctrl" }, "G" },
    leftTwoThird = { { "alt", "ctrl" }, "E" },
    rightTwoThird = { { "alt", "ctrl" }, "T" },

    center = { { "alt", "ctrl" }, "C" },
    maximize = { { "alt", "ctrl" }, "Return" },
})


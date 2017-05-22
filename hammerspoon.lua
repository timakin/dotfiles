-- remap functions

local function keyCode(key, mods, callback)
    mods = mods or {}
    callback = callback or function() end
    return function()
        hs.eventtap.event.newKeyEvent(mods, string.lower(key), true):post()
        hs.timer.usleep(1000)
        hs.eventtap.event.newKeyEvent(mods, string.lower(key), false):post()
        callback()
    end
end

local function remapKey(mods, key, keyCode)
    hs.hotkey.bind(mods, key, keyCode, nil, keyCode)
end

local function killLine()
    return keyCode("right", {"cmd", "shift"}, keyCode("x", {"cmd"}))
end

-- watch & switch hotkey settings

local function switchHotKeys(enable)
    for k, v in pairs(hs.hotkey.getHotkeys()) do
        if enable then
            v["_hk"]:enable()
        else
            v["_hk"]:disable()
        end
    end
end

local function handleGlobalEvent(name, event, app)
    if event == hs.application.watcher.activated then
        if name == "Emacs" or name == "iTerm2" then
            switchHotKeys(false)
        else
            switchHotKeys(true)
        end
    end
end

watcher = hs.application.watcher.new(handleGlobalEvent)
watcher:start()


-- remap settings

remapKey({"fn"}, "p", keyCode("up"))
remapKey({"fn"}, ";", keyCode("down"))
remapKey({"fn"}, ":", keyCode("right"))
remapKey({"fn"}, "l", keyCode("left"))


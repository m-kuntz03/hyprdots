local mainMod = "SUPER"

-- System
hl.bind(mainMod .. "+ SHIFT + Q", hl.dsp.window.close({"activewindow"}), {description = "Close Active Window"})
hl.bind(mainMod .. "+ CTRL + Q", hl.dsp.window.kill({"activewindow"}), {description = "Kill Active Window"})
hl.bind(mainMod .. "+ SHIFT + X", hl.dsp.exec_cmd(scr_logout), {description = "Logout Menu"})
hl.bind(mainMod .. "+ SHIFT + L", hl.dsp.exec_cmd("hyprlock"), {description = "Lock Screen"})
-- hl.bind(mainMod .. "+ SHIFT + M", hl.dsp.exec_cmd(""), {description = "Switch Secondary Monitor Configuration"})
-- hl.bind(mainMod .. "+ SHIFT + C", hl.dsp.exec_cmd(""), {description = "Reloads all Configs"})

hl.bind(mainMod .. "+ C", hl.dsp.exec_cmd("hyprpicker -a"), {description = "Colour Picker"})
hl.bind(mainMod .. "+ Print", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"), {description = "Screenshot to Clipboard"})
hl.bind(mainMod .. "+ SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/screenshots"), {description = "Screenshot to Clipboard + File"})


-- Programs
hl.bind(mainMod .. "+ RETURN", hl.dsp.exec_cmd(terminal), {description = "Opens Terminal"})
hl.bind(mainMod .. "+ SPACE", hl.dsp.exec_cmd(menu), {description = "Opens Program Menu"})

hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd(filemanager), {description = "Opens File Manager"})
hl.bind(mainMod .. "+ B", hl.dsp.exec_cmd(browser), {description = "Opens Browser"})
hl.bind(mainMod .. "+ V", hl.dsp.exec_cmd(editor), {description = "Opens Editor"})
hl.bind(mainMod .. "+ T", hl.dsp.exec_cmd(teams), {description = "Opens Teams"})
hl.bind(mainMod .. "+ Z", hl.dsp.exec_cmd(zotero), {description = "Opens Zotero"})

hl.bind(mainMod .. "+ CTRL + I", hl.dsp.exec_cmd(terminal .. "-e impala"), {description = "Opens Impala"})
hl.bind(mainMod .. "+ CTRL + B", hl.dsp.exec_cmd(terminal .. "-e bluetui"), {description = "Opens BlueTUI"})
hl.bind(mainMod .. "+ CTRL + T", hl.dsp.exec_cmd(terminal .. "-e btop"), {description = "Opens BTOP"})


-- Navigation
hl.bind(mainMod .. "+ left", hl.dsp.focus({direction = "l"}))
hl.bind(mainMod .. "+ right", hl.dsp.focus({direction = "r"}))
hl.bind(mainMod .. "+ up", hl.dsp.focus({direction = "u"}))
hl.bind(mainMod .. "+ down", hl.dsp.focus({direction = "d"}))

hl.bind(mainMod .. "+ SHIFT + left", hl.dsp.window.move({direction = "l"}))
hl.bind(mainMod .. "+ SHIFT + right", hl.dsp.window.move({direction = "r"}))
hl.bind(mainMod .. "+ SHIFT + up", hl.dsp.window.move({direction = "u"}))
hl.bind(mainMod .. "+ SHIFT + down", hl.dsp.window.move({direction = "d"}))

hl.bind(mainMod .. "+ SHIFT + M", hl.dsp.layout("swapwithmaster"), {description = "Swap active Window with Master Window"})


-- Workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. "+" .. key, hl.dsp.focus({workspace = i}), {description = "Focus Workspace " .. i})
    hl.bind(mainMod .. "+ SHIFT +" .. key, hl.dsp.window.move({workspace = i, follow = true}), {description = "Move & Follow Window to Workspace " .. i})
    hl.bind(mainMod .. "+ CTRL +" .. key, hl.dsp.window.move({workspace = i, follow = false}), {description = "Silently Move Window to Workspace " .. i})
end

hl.bind(mainMod .. "+ Tab", hl.dsp.focus({workspace = "e+1"}), {description = "Cycle to Next Workspace"})
hl.bind(mainMod .. "+ SHIFT + Tab", hl.dsp.focus({workspace = "e-1"}), {description = "Cycle to Previous Workspace"})
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Scroll to next workspace" })
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }), { description = "Scroll to previous workspace" })


-- Layout
hl.bind(mainMod .. "+ F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}), {description = "Toggle Fullscreen"})
hl.bind(mainMod .. "+ G", hl.dsp.window.float({action = "toggle"}), {description = "Toggle Floating"})
hl.bind(mainMod .. "+ SHIFT + G", hl.dsp.exec_cmd(scr_stickywindow), {description = "Toggle Sticky"})
-- hl.bind(mainMod .. "+ J", hl.dsp.layout("swapsplit"), {description = "Swap Split Direction"})

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true, description = "Move window with the mouse" })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Resize window with the mouse" })


-- Function Keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5 --max-volume 150"), { locked = true, repeating = true, description = "Raise volume" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5 --max-volume 150"), { locked = true, repeating = true, description = "Lower volume" })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true, repeating = true, description = "Mute audio" })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), { locked = true, repeating = true, description = "Mute microphone" })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("swayosd-client --brightness +10"), { locked = true, repeating = true, description = "Increase brightness" })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("swayosd-client --brightness -10"), { locked = true, repeating = true, description = "Decrease brightness" })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true, description = "Next track" })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, description = "Pause audio" })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, description = "Play audio" })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true, description = "Previous track" })

-- Global Variables
terminal = "kitty"
filemanager = "thunar"
menu = "rofi -show drun"
browser = "firefox"
editor = "codium"
teams = "teams-for-linux"
zotero = "zotero"

home = os.getenv( "HOME" )
scr_logout = home .. "/MKArch/MKArch_wlogout"
scr_secondmonitor = home .. "/MKArch/MKArch_switch_monitors"
scr_configreload = home.. "/MKArch/MKArch_reload_configs"
scr_stickywindow = home .. "/MKArch/MKArch_sticky_window"


-- Config
require("conf.input")
require("conf.keybinds")
require("conf.gestures")
require("conf.primary_monitor")
require("conf.secondary_monitors")
require("conf.style")
require("conf.misc")
require("conf.autostart")
require("conf.permissions")
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd("uwsm app -- hyprpaper")
	hl.exec_cmd("uwsm app -- udiskie")
	hl.exec_cmd("uwsm app -- hypridle")
end)

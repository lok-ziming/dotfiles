if status is-interactive
# Commands to run in interactive sessions can go here
end
set fish_greeting ""

if status is-login && test (tty) = "/dev/tty1"
	if test -z "$WAYLAND_DISPLAY"
		set -x XDG_SESSION_TYPE wayland
		set -x XDG_CURRENT_DESKTOP niri
		exec niri
	end
end

function sp 
	wl-paste | satty -f -
end

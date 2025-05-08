#restart waybar
killall waybar

waybar

# restart blueman applet
killall blueman-applet
blueman-applet

# restart notification daemon (swaync)
killall swaync

swaync

#restart hyprpaper
killall hyprpaper

hyprpaper

sleep 1

# kill all possible running xdg-desktop-portals
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-gnome
killall -e xdg-desktop-portal-kde
killall -e xdg-desktop-portal-lxqt
killall -e xdg-desktop-portal-wlr
killall -e xdg-desktop-portal-gtk
killall -e xdg-desktop-portal
sleep 1

# start xdg-desktop-portal-hyprland
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2

# start xdg-desktop-portal
/usr/lib/xdg-desktop-portal &
sleep 1

# restart dock
killall nwg-dock-hyprland

nwg-dock-hyprland -d

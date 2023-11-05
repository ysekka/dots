echo $(hyprctl activewindow -j | jq --raw-output .class | tr -d " " | tr -d "-" | tr 'a-z' 'A-Z')
socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	echo $(hyprctl activewindow -j | jq --raw-output .class | tr -d " " | tr -d "-" | tr 'a-z' 'A-Z')
done
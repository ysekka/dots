hyprctl devices -j | jq '.keyboards[] | select(.name=="at-translated-set-2-keyboard") | .active_keymap' | tr -d '"' | tr -d " " | tr 'a-z' 'A-Z'

socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	hyprctl devices -j | jq '.keyboards[] | select(.name=="at-translated-set-2-keyboard") | .active_keymap' | tr -d '"' | tr -d " " | tr 'a-z' 'A-Z'
done
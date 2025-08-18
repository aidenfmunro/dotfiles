restart_waybar() {
  pkill waybar 2>/dev/null || true
  nohup waybar --config "$HOME/.config/waybar/config.jsonc" --style "$HOME/.config/waybar/style.css" >/dev/null 2>&1 &
}

main() {
    restart_waybar
}

main


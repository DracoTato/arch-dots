# My Archlinux Dotfiles

## Specs

- Shell: **zsh**
- Login Manager: **greetd** (tuigreet)
- Window Manager: **hyprland**

- Terminal: **kitty**
- Bar: **quickshell**
- Notification Daemon: **mako**
- App Launcher: **wofi**
- Screen Lock: **hyprlock**
- Idle Daemon: **hypridle**
- Screenshot Utility: **hyprshot**
- Color Picker Utility: **hyprpicker**
- Wallpaper Utility: **hyprpaper**
- Wallpaper Manager: **waypaper**
- Dynamic Color Palette: **py-wal**

**Note for Waypaper**
add this:

```bash
post_command = $HOME/.config/hypr/scripts/post-wallpaper.sh $wallpaper
```

To `.config/waypaper/config.ini`

## Installation

```bash
git clone git@github.com:dracotato/arch-dots.git .dots
cd .dots
# with stow
stow -v . -t=~
# without stow...
# use cp to copy each directory
```

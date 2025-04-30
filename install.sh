#!/bin/bash

# Exit on error
set -e

# Define working directory (current directory)
WORKDIR="$(pwd)"

# 1. Copy BlockZone.ttf to ~/.local/share/fonts and refresh font cache
mkdir -p ~/.local/share/fonts
cp "$WORKDIR/BlockZone.ttf" ~/.local/share/fonts/
fc-cache -f

# 2. Symlink init to ~/.config/river/init
mkdir -p ~/.config/river
ln -sf "$WORKDIR/init" ~/.config/river/init

# 3. Symlink foot.ini to ~/.config/foot/foot.ini
mkdir -p ~/.config/foot
ln -sf "$WORKDIR/foot.ini" ~/.config/foot/foot.ini

# 4. Symlink config.jsonc to ~/.config/waybar/config.jsonc
# 5. Symlink style.css to ~/.config/waybar/style.css
mkdir -p ~/.config/waybar
ln -sf "$WORKDIR/config.jsonc" ~/.config/waybar/config.jsonc
ln -sf "$WORKDIR/style.css" ~/.config/waybar/style.css

# 6. Copy lainwallpaper.jpg to ~/Pictures/wallpapers
mkdir -p ~/Pictures/wallpapers
cp "$WORKDIR/lainwallpaper.jpg" ~/Pictures/wallpapers/

# 7. Copy android_notification-pink_edit.rasi to ~/.config/rofi/themes/
mkdir -p ~/.config/rofi/themes
cp "$WORKDIR/android_notification-pink_edit.rasi" ~/.config/rofi/themes/

echo "Rice installed."

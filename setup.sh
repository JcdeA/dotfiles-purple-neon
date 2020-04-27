#!/bin/sh

#i3 config
echo "LINKING: $DIR/.config/i3/config-> ~/.config/i3/config "
ln -nfs $DIR/.config/i3/config ~/.config/i3/config
#i3 layouts
echo "LINKING: $DIR/.config/i3/chromium.json-> ~/.config/i3/chromium.json "
ln -nfs $DIR/.config/i3/chromium.json ~/.config/i3/chromium.json
echo "LINKING: $DIR/.config/i3/4terminals.json-> ~/.config/i3/4terminals.json "
ln -nfs $DIR/.config/i3/4terminals.json ~/.config/i3/4terminals.json
#i3 primary display selector
echo "LINKING: $DIR/.config/i3/primary_display_selector.sh-> ~/.config/i3/primary_display_selector.sh "
ln -nfs $DIR/.config/i3/primary_display_selector.sh ~/.config/i3/primary_display_selector.sh

#compton
echo "LINKING: $DIR/.config/compton.conf-> ~/.config/compton.conf "
ln -nfs $DIR/.config/compton.conf ~/.config/compton.conf

#conky
echo "LINKING: $DIR/.config/conky_graph-> ~/.config/conky_graph "
ln -nfs $DIR/.config/conky_graph ~/.config/conky_graph

#bumblebee-theme
echo "LINKING: $DIR/.config/bumblebee-status/themes/purpleish-powerline.json-> ~/.config/bumblebee-status/themes/purpleish-powerline.json "
ln -nfs $DIR/.config/bumblebee-status/themes/purpleish-powerline.json ~/.config/bumblebee-status/themes/purpleish-powerline.json

#rofi
echo "LINKING: $DIR/.config/rofi/config-> ~/.config/rofi/config "
ln -nfs $DIR/.config/rofi/config ~/.config/rofi/config

echo "LINKING: $DIR/.config/rofi/purple.rasi-> ~/.config/rofi/purple.rasi "
ln -nfs $DIR/.config/rofi/purple.rasi ~/.config/rofi/purple.rasi

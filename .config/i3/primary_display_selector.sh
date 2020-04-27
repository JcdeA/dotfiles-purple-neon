#!/bin/bash
for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
    if [[ $output =~ ^DP-0.*$ ]]; then
    	found_connected_disp=true
    else
    	laptop_display=$output
    fi
    echo "Found $output"
done

for output1 in $(xrandr | grep '\Wconnected' | awk '{ print $1 ":" $3}'); do
	if [[ $output1 == *"primary"* ]]; then
		IFS=':' tokens=( $output1 )
		primary_display=${tokens[0]}
		echo "Primary : "$primary_display
	fi
done

if [[ $found_connected_disp == true ]]; then
	if [[ $primary_display == $laptop_display ]]; then
		echo "Multiple displays connected, but laptop is primary... Switching"
		xrandr --output DP-0.1 --primary
	else
		echo "Connected displays detected. Laptop display is not primary..."
	fi
else
	if [[ $primary_display != $laptop_display ]]; then
		echo "No displays connected, but laptop is not primary... Switching"
		xrandr --output $laptop_display --primary
	else
		echo "No displays connected, laptop is primary..."
	fi
fi
# for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
#     if [[ ! $output =~ ^LVDS.*$ ]]; then
#        xrandr --output $lvds --auto --output $output --pos 0x0 --auto \
#               --right-of $lvds --primary
#     fi
# done
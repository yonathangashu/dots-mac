#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

FOCUSED_COLOR=0xffe3c19f
UNFOCUSED_COLOR=0xff876d51

SPACE_ICONS=("◉" "◉" "◉" "◉" "◉")

SPACE_CLICK_SCRIPT="yabai -m space --focus $SID 2>/dev/null"

if [ "$SELECTED" = "true" ]; then
	sketchybar --set "$NAME" \
		icon.color="$FOCUSED_COLOR" \
		icon="${SPACE_ICONS[$SID - 1]}" \
        icon.font="Hack Nerd Font:Bold:20.0"\
		click_script="$SPACE_CLICK_SCRIPT"
else
	sketchybar --set "$NAME" \
		icon.color="$UNFOCUSED_COLOR" \
        icon.font="Hack Nerd Font:Bold:20.0"\
		icon="${SPACE_ICONS[$SID - 1]}" \
		click_script="$SPACE_CLICK_SCRIPT"
fi

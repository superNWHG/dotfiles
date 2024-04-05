#!/bin/sh

WindowClass=$1

if test -z "$WindowClass"; then
    echo "Please provide a class name"
    exit
fi

parse_json() {
    json="$1"
    workspace=$(echo "$json" | jq -r '.workspace')
    echo "$workspace"
}

hyprctl clients -j | jq -c '.[]' > temp_file

while IFS= read -r entry; do
    class=$(echo "$entry" | jq -r '.class')
    if [ "$class" = "$WindowClass" ]; then
        workspace=$(parse_json "$entry")
        CurrentWorkspace=$(echo "$workspace" | jq -r '.id')
        break
    fi
done < temp_file

echo $CurrentWorkspace

if test -z "$CurrentWorkspace"; then
	if [ "$WindowClass" = "Btop" ]; then
		hyprctl dispatch exec -- alacritty --class Btop --command btop
		exit
	fi
	if [ "$WindowClass" = "ScratchTerm" ]; then
		hyprctl dispatch exec -- alacritty --class ScratchTerm
		exit
	fi
fi

FocusWorkspace=$(hyprctl activeworkspace -j | jq -r ".id")

if [ "$CurrentWorkspace" = "-99" ]; then
	hyprctl dispatch movetoworkspace "$FocusWorkspace","$WindowClass"
else
	hyprctl dispatch movetoworkspacesilent special,"$WindowClass"
fi
rm temp_file

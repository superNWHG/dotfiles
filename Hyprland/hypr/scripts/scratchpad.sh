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

hyprctl clients -j | jq -c '.[]' > ~/.cache/temp_file

while IFS= read -r entry; do
    class=$(echo "$entry" | jq -r '.class')
    if [ "$class" = "$WindowClass" ]; then
        workspace=$(parse_json "$entry")
        CurrentWorkspace=$(echo "$workspace" | jq -r '.id')
        break
    fi
done < ~/.cache/temp_file

if test -z "$CurrentWorkspace"; then
	if [ "$WindowClass" = "ghostty.Btop" ]; then
		hyprctl dispatch exec -- ghostty --class=ghostty.Btop --command=btop
		exit
	fi
	if [ "$WindowClass" = "ghostty.ScratchTerm" ]; then
		hyprctl dispatch exec -- ghostty --class=ghostty.ScratchTerm
		exit
	fi
fi

FocusWorkspace=$(hyprctl activeworkspace -j | jq -r ".id")

if [ "$CurrentWorkspace" = "-99" ]; then
	hyprctl dispatch movetoworkspace "$FocusWorkspace",class:"$WindowClass"
else
	hyprctl dispatch movetoworkspacesilent special,class:"$WindowClass"
fi
rm ~/.cache/temp_file

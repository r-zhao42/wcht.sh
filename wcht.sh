#!/usr/bin/env bash
languages=$(echo "golang c cpp typescript rust bash lua python javascript" | tr " " "\n")
core_utils=$(compgen -c)
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "Gimmie your query: " query

if echo "$languages" | grep -qs $selected; then
	wezterm cli split-pane --right --percent 40 -- bash -c "curl -s cht.sh/$selected/$(echo "$query" | tr " " "+")  | less -r"
else
	wezterm cli split-pane --right --percent 40 -- bash -c "curl -s cht.sh/$selected~$query | less -r"
fi


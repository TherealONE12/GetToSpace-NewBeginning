#!/bin/sh
printf '\033c\033]0;%s\a' GetToSpace
base_path="$(dirname "$(realpath "$0")")"
"$base_path/GetToSpace.arm32" "$@"

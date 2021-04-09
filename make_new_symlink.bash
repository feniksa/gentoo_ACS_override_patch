#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

WORK_DIR="${WORK_DIR:-sys-kernel}"

[ -d "$WORK_DIR" ] && cd "$WORK_DIR"

for rel_src_dir in gentoo-sources-*; do
    __ln_target="${rel_src_dir/sources/kernel}"
    [ -L "$__ln_target" ] || ln -sf "$rel_src_dir" "$__ln_target"
    if [ ! -L "$__ln_target" ]; then
        printf "Unable to make new symlink for %s\n" "$rel_src_dir"
        exit 1
    fi
done

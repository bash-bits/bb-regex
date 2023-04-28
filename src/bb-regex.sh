#!/usr/bin/env bb-import

# ==================================================================
# bb-regex
# ==================================================================
# BB-Regex Library File
#
# File:         bb-regex
# Author:       Ragdata
# Date:         15/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# functions::load
# ------------------------------------------------------------------
# ------------------------------------------------------------------
regex::load()
{
    local currDir file

    currDir="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

    local -a args=("$@")

    [[ "${#args[@]}" -eq 0 ]] && args+=("all")

    [[ "${args[0]}" == "all" ]] && unset args

    if [[ "${#args[@]}" -eq 0 ]]; then
        for file in "$currDir"/bb-regex.d/*
        do
            args+=("${file##*/}")
        done
    fi

    for file in "${args[@]}"
    do
        bb::import "bb-regex/$file"
    done
}
# ==================================================================
# MAIN
# ==================================================================
# IF SOURCED, RUN LOAD FUNCTION
if [[ $(is::sourced) ]]; then
	regex::load "$@" || return $?
fi

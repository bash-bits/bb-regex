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
# DEPENDENCIES
# ==================================================================
bb-import bb-functions/is
# ==================================================================
# VARIABLES
# ==================================================================
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
    else
        for file in "${args[@]}"
        do
            bb::import "bb-regex/$file"
        done
    fi
}
# ------------------------------------------------------------------
# regex::version
# ------------------------------------------------------------------
# @description Reports the version and build date of this release
#
# @noargs
#
# @stdout Version, Copyright, & Build Information
# ------------------------------------------------------------------
regex::version()
{
	local verbosity="${1:-}"

	if [[ -z "$verbosity" ]]; then
		echo "${PKG_VERSION}"
	else
		echo
		echo "Bash-Bits Modular Bash Library"
		echoWhite "BB-PKG Module ${PKG_VERSION}"
		echo "Copyright © 2022-2023 Darren (Ragdata) Poulton"
		echo "Build: ${PKG_BUILD}"
		echo "Build Date: ${PKG_BUILD_DATE}"
		echo
	fi
}
# ==================================================================
# MAIN
# ==================================================================
# IF SOURCED, RUN LOAD FUNCTION
if [[ $(is::sourced) ]]; then
	regex::load "$@" || return $?
else
	trap 'bb::errorHandler "LINENO" "BASH_LINENO" "${BASH_COMMAND}" "${?}"' ERR

	options=$(getopt -l "version::" -o "v::" -a -- "$@")

	eval set --"$options"

	while true
	do
		case "$1" in
			-v|--version)
				if [[ -n "${2}" ]]; then
					regex::version "${2}"
					shift 2
				else
					regex::version
					shift
				fi
				exitReturn 0
				;;
			--)
				shift
				break
				;;
			*)
				echoError "Invalid Argument!"
				exitReturn 2
				;;
		esac
	done
fi

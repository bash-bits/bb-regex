#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/numeric
# ==================================================================
# BB-Functions Library
#
# File:         numeric
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::numeric
# ------------------------------------------------------------------
# Returns the value of the requested regex string
#
# ARGS:
#
#	$1 - name of the required regex string
#
# RETURNS:
#
#	* 0 - success
#	* 1 - error
#
# ------------------------------------------------------------------
regex::numeric()
{
	local isINT='^[-+]?\d+$'
	local isFLOAT='^[-+]?\d+([,\.]\d+)?$'
	local isDECIMAL='[+-]?([0-9]+(\.[0-9]*)?|\.[0-9]+)'
	local isBOOL='^(true|false|[0-1])$'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
regex::isINT()			{ regex::numeric isINT; }
regex::isFLOAT()		{ regex::numeric isFLOAT; }
regex::isDECIMAL()		{ regex::numeric isDECIMAL; }
regex::isBOOL()			{ regex::numeric isBOOL; }

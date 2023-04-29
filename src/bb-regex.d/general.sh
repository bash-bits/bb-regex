#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/general
# ==================================================================
# BB-Functions Library
#
# File:         general
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::general
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
regex::general()
{
	local isVARNAME='^[A-Za-z\_][A-Za-z0-9\_]*$'
	local isDBNAME='^[A-Za-z0-9\-\_\.]+$'
	local isPATH='^(/[^/]*)*(/?.+(\..+))$'
	local isLOC='^[a-z]{2}_[A-Z]{2}.*$'
	local isUSERPASS='^[a-zA-Z0-9\-\~\_\.\,\!\@\#\$\%\^\&\*\(\)\+\=]+$'
	local isPASS='^((?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[\-\~\_\.\,\!\@\#\$\%\^\&\*\(\)\+\=])(?=\S*?[0-9])\S{8,})$'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
#
# ALIAS FUNCTIONS --------------------------------------------------
#
regex::isVARNAME()		{ regex::general isVARNAME; }
regex::isDBNAME()		{ regex::general isDBNAME; }
regex::isPATH()			{ regex::general isPATH; }
regex::isLOC()			{ regex::general isLOC; }
regex::isUSERPASS()		{ regex::general isUSERPASS; }
regex::isPASS()			{ regex::general isPASS; }

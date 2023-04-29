#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/date
# ==================================================================
# BB-Functions Library
#
# File:         date
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::date
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
regex::date()
{
	local isDATE='-?([1-9][0-9]*)?[0-9]{4}-(1[0-2]|0[1-9])-(3[0-1]|0[1-9]|[1-2][0-9])(Z|[+-](2[0-3]|[0-1][0-9]):[0-5][0-9])?'
	local isDATETIME='(\d{4}-[0-1]\d-[0-3]\d[\sT][0-2]\d:[0-5]\d:[0-5]\d((.\d{3})|\s)\+[0-2]\d:[0-5]\d)'
	local isDATEDMY='^(0?[1-9]|[12][0-9]|3[01])[\-\s\/\.](0?[1-9]|1[012])[\-\s\/\.][0-9]{2,4}$'
	local isDATEMDY='^(0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])[- /.][0-9]{2,4}$'
	local isDATEYMD='^[0-9]{2,4}[- /.](0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])$'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
#
# ALIAS FUNCTIONS --------------------------------------------------
#
regex::isDate()			{ regex::date isDate; }
regex::isDATETIME()		{ regex::date isDATETIME; }
regex::isDATEDMY()		{ regex::date isDATEDMY; }
regex::isDATEMDY()		{ regex::date isDATEMDY; }
regex::isDATEYMD()		{ regex::date isDATEYMD; }

#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/response
# ==================================================================
# BB-Functions Library
#
# File:         response
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::response
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
regex::response()
{
	local RESP='[yn]|yes|no'
	local AFFIRM='[y]|yes'
	local NEGAT='[n]|no'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
regex::RESP()			{ regex::response RESP; }
regex::AFFIRM()			{ regex::response AFFIRM; }
regex::NEGAT()			{ regex::response NEGAT; }

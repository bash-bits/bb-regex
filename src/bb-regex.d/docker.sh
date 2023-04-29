#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/docker
# ==================================================================
# BB-Functions Library
#
# File:         docker
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::docker
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
regex::docker()
{
	local isDOCKJOIN='^[\s]+(docker swarm join \-\-token (SWMTKN\-[^\s]+) (((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])):?([0-9]+)?))$'
	local isSWMKEY='^[\s]+(SWMKEY[^\s\n]+)$'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
#
# ALIAS FUNCTIONS --------------------------------------------------
#
regex::isDOCKJOIN()		{ regex::docker isDOCKJOIN; }
regex::isSWMKEY()		{ regex::docker isSWMKEY; }

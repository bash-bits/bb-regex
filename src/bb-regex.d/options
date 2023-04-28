#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/options
# ==================================================================
# BB-Functions Library
#
# File:         options
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::options
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
regex::options()
{
	local isOPT='^(-([A-Za-z]+)[\s]?([A-Za-z0-9_\.]*))$|^(--(([A-Za-z0-9_\.]+)=?([A-Za-z0-9_\.]*)))$'	# is Option
	local isOPTNOVAL='^(-([A-Za-z]))$|^(--([A-Za-z0-9_\.]+))$'											# is Option - No Value
	local isOPTVAL='^(-([A-Za-z])[\s]([A-Za-z0-9_\.]+))$|^(--([A-Za-z0-9_\.]+)=([A-Za-z0-9_\.]+))$'		# is Option with Value
	local isSOPT='^(-([A-Za-z]+)[\s]?([A-Za-z0-9_\.]*))$'												# is Short Option
	local isSOPTNOVAL='^(-([A-Za-z]+))$'																# is Short Option - No Value
	local isSOPTVAL='^(-([A-Za-z]+)\s([A-Za-z0-9_\.]*))$'												# is Short Option with Value
	local isLOPT='^(--([A-Za-z0-9_\.]+)[=]?([A-Za-z0-9_\.]*))$'											# is Long Option
	local isLOPTNOVAL='^(--([A-Za-z0-9_\.]+))$'															# is Long Option - No Value
	local isLOPTVAL='^(--([A-Za-z0-9_\.]+)=([A-Za-z0-9_\.]*))$'											# is Long Option with Value

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
regex::isOPT()			{ regex::options isOPT; }
regex::isOPTNOVAL()		{ regex::options isOPTNOVAL; }
regex::isOPTVAL()		{ regex::options isOPTVAL; }
regex::isSOPT()			{ regex::options isSOPT; }
regex::isSOPTNOVAL()	{ regex::options isSOPTNOVAL; }
regex::isSOPTVAL()		{ regex::options isSOPTVAL; }
regex::isLOPT()			{ regex::options isLOPT; }
regex::isLOPTNOVAL()	{ regex::options isLOPTNOVAL; }
regex::isLOPTVAL()		{ regex::options isLOPTVAL; }
# ==================================================================
# VARIABLES
# ==================================================================
declare -gx isOPT="$(regex::isOPT)"
declare -gx isOPTNOVAL="$(regex::isOPTNOVAL)"
declare -gx isOPTVAL="$(regex::isOPTVAL)"
declare -gx isSOPT="$(regex::isSOPT)"
declare -gx isSOPTNOVAL="$(regex::isSOPTNOVAL)"
declare -gx isSOPTVAL="$(regex::isSOPTVAL)"
declare -gx isLOPT="$(regex::isLOPT)"
declare -gx isLOPTNOVAL="$(regex::isLOPTNOVAL)"
declare -gx isLOPTVAL="$(regex::isLOPTVAL)"
# ==================================================================
# ALIASES
# ==================================================================
alias isOPT="regex::isOPT"
alias isOPTNOVAL="regex::isOPTNOVAL"
alias isOPTVAL="regex::isOPTVAL"
alias isSOPT="regex::isSOPT"
alias isSOPTNOVAL="regex::isSOPTNOVAL"
alias isSOPTVAL="regex::isSOPTVAL"
alias isLOPT="regex::isLOPT"
alias isLOPTNOVAL="regex::isLOPTNOVAL"
alias isLOPTVAL="regex::isLOPTVAL"

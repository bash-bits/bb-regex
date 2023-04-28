#!/usr/bin/env bb-import

# ==================================================================
# bb-regex.d/network
# ==================================================================
# BB-Functions Library
#
# File:         network
# Author:       Ragdata
# Date:         29/04/2023
# License:      MIT License
# Copyright:    Copyright © 2023 Darren (Ragdata) Poulton
# ==================================================================
# FUNCTIONS
# ==================================================================
# ------------------------------------------------------------------
# regex::network
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
regex::network()
{
	local isURL='(?<url>((?<protocol>https?|ftp)://)?(?<uri>(?<fqdn>[a-z0-9][a-z0-9\-\.]+)(?<port>:[1-9][0-9]{2,4})?/?(?<file>[a-z0-9\+\&\/\@\#\%\=\~\-\_\|\!\.]*)?\??(?<parameters>[a-z0-9\+\&/\@\#\%\=\~\-\_\|\!\:\.]*)?))'
	local isFQDN='^[a-z0-9][a-z0-9\-]+\.[a-z0-9\.\-]+$'
	local isHOST='^[A-Za-z0-9\-]+$'
	local isPORT='^[1-9][0-9]{2,4}$'
	local isSSH='(([a-z][a-z0-9\-\_]+)@([a-z0-9][a-z0-9\-]+\.[a-z0-9\.\-]+):([a-z][a-z0-9\-\_]+/[a-z][a-z0-9\-\_]+)(\.[a-z]+)?)'
	local isIPv4='^(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9]):?([1-9][0-9]{0,3})?$'
	local isIPv6='^(?:(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4}|(?:[A-F0-9]{1,4}:){6}:[A-F0-9]{1,4}|(?:[A-F0-9]{1,4}:){5}(?::[A-F0-9]{1,4}){1,2}|(?:[A-F0-9]{1,4}:){4}(?::[A-F0-9]{1,4}){1,3}|(?:[A-F0-9]{1,4}:){3}(?::[A-F0-9]{1,4}){1,4}|(?:[A-F0-9]{1,4}:){2}(?::[A-F0-9]{1,4}){1,5}|[A-F0-9]{1,4}:(?::[A-F0-9]{1,4}){1,6}|(?:[A-F0-9]{1,4}:){1,7}:|:(?::[A-F0-9]{1,4}){1,7}|::)$'
	local isMAC='^[0-9a-fA-F]{2}([-:]?)(?:[0-9a-fA-F]{2}\1){4}[0-9a-fA-F]{2}$'
	local isEMAIL='^(([a-z0-9][a-z0-9\.\_\%\+\-]{0,63})@([a-z0-9-]{1,63}\.){1,8}[a-z]{2,63})$'

	[[ -n "${!1}" ]] && { printf '%s' "${!1}"; return 0; } || return 1
}
regex::isURL()			{ regex::network isURL; }
regex::isFQDN()			{ regex::network isFQDN; }
regex::isHOST()			{ regex::network isHOST; }
regex::isPORT()			{ regex::network isPORT; }
regex::isSSH()			{ regex::network isSSH; }
regex::isIPv4()			{ regex::network isIPv4; }
regex::isIPv6()			{ regex::network isIPv6; }
regex::isMAC()			{ regex::network isMAC; }
regex::isEMAIL()		{ regex::network isEMAIL; }

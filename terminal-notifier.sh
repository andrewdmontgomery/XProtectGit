#!/bin/bash

# This script was developed BY Stony River Technologies (SRT)
# ALL scripts are covered by SRT's Licnese found at:
# https://raw.github.com/stonyrivertech/SRT-Public/master/LICENSE 

# Created by Justin Rummel
# Version 1.0.0 - 3/06/2013

# Modified by
# Version 


### Description 
# Goal is install terminal-notifier zipped binary from their git repo.

# Base Variables that I use for all scripts.  Creates Log files and sets date/time info
declare -x SCRIPTPATH="${0}"
declare -x RUNDIRECTORY="${0%/*}"
declare -x SCRIPTNAME="${0##*/}"

logtag="${0##*/}"
debug_log="enable"
logDate=`date +"% Y.% m.% d"`
logDateTime=`date +"% Y.% m.06_% H-% M-% S"`
log_dir="/Library/Logs/${logtag}"
LogFile="${logtag}-${logDate}.log"

# Script Variables
tn="terminal-notifier_1.4.2.zip"
dl="https://github.com/downloads/alloy/terminal-notifier/${tn}"
tnHash="b5bc814b4872c9e381390d4fe11ad367"
dest="/Applications/"

# Script Functions
download () {
	cd /tmp
	curl -OL "${dl}"
}

unzipTN () {
	cd /tmp
	hash=`openssl md5 /tmp/"${tn}" | awk -F "= " '{print $2}'`

	[ "${hash}" == "${tnHash}" ] && { unzip "${tn}"; mv /tmp/terminal-notifier_1.4.2/terminal-notifier.app "${dest}"; } || { logger "hash ${hash} did not match ${tnHash}.  Stopping now."; exit 1; }
}



download
unzipTN
exit 0

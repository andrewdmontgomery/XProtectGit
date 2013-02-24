#!/bin/bash

# This script was developed BY Stony River Technologies (SRT)
# ALL scripts are covered by SRT's Licnese found at:
# https://raw.github.com/stonyrivertech/SRT-Public/master/LICENSE 

# Created by Justin Rummel
# Version 1.0.0 - 2/20/2013

# Modified by
# Version 

### Description 
# Goal is to copy XProtect.plist files to your local /Users/Shared/XProtect folder so you can review what has changed
# when apple updates their XProtect information.  This is not a management system. 

# Base Variables that I use for all scripts.  Creates Log files and sets date/time info
declare -x SCRIPTPATH="${0}"
declare -x RUNDIRECTORY="${0%/*}"
declare -x SCRIPTNAME="${0##*/}"

logtag="${0##*/}"
debug_log="disabled"
logDate=`date +"%Y-%m-%d"`
logDateTime=`date +"%Y-%m-%d_%H.%M.%S"`
log_dir="/Library/Logs/${logtag}"
LogFile="${logtag}-${logDate}.log"

# Script Variables
sourceDir="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/"
destineDir="/Users/Shared/XProtect/"
XPath=".version/"
file="XProtect.plist"
metaFile="XProtect.meta.plist"
version=`/usr/libexec/PlistBuddy -c "print :Version" /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist`

[ ! -d "${destineDir}" ] && { mkdir "${destineDir}"; }
[ ! -d "${destineDir}${XPath}" ] && { mkdir "${destineDir}${XPath}"; }
[ ! -e "${destineDir}${XPath}${version}" ] && {
	touch "${destineDir}${XPath}${version}"
	cp "${sourceDir}${file}" "${destineDir}${logDateTime}-${file}"
	cp "${sourceDir}${metaFile}" "${destineDir}${logDateTime}-${metaFile}"
}

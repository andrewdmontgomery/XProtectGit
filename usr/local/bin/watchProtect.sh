#!/bin/bash

### Variables
day=`date '+%Y-%m-%d_%H-%M-%S'`
sourceDir="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/"
destineDir="/Users/Shared/XProtect/"
XPath=".version/"
file="XProtect.plist"
version=`/usr/libexec/PlistBuddy -c "print :Version" /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist`

[ ! -d "${destineDir}" ] && { mkdir "${destineDir}"; }
[ ! -d "${destineDir}${XPath}" ] && { mkdir "${destineDir}${XPath}"; }
[ ! -e "${destineDir}${XPath}${version}" ] && {
	touch "${destineDir}${XPath}${version}"
	cp "${sourceDir}${file}" "${destineDir}${day}-${file}"
}

`
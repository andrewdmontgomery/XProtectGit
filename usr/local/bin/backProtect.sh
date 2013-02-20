#!/bin/bash

### Variables
day=`date '+%Y-%m-%d_%H-%M-%S'`
sourceDir="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/"
destineDir="/Users/Shared/XProtect/"
file="XProtect.plist"
version=`/usr/libexec/PlistBuddy -c "print :Version" /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist`

[ ! -d "${destineDir}" ] && { mkdir "${destineDir}"; }
[ ! -e "${destineDir}".version/"${version}" ] && {
	touch "${destineDir}".version/"${version}"
	cp "${sourceDir}${file}" "${destineDir}${day}-${file}"
}


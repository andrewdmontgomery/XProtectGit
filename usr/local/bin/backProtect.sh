#!/bin/bash

### Variables
day=`date '+%Y-%m-%d'`
sourceDir="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/"
destineDir="/Users/Shared/XProtect/"
file="XProtect.plist"


[ ! -d "${destineDir}" ] && { mkdir "${destineDir}"; }
cp "${sourceDir}${file}" "${destineDir}${day}-${file}"

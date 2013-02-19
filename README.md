XProtectWatch
=============

This a tool to copy the XProtect.plist file whenever it changes via LaunchDaemon.  This is not a managment system for XProtect.

Copy the files as needed:

*	/usr/local/bin/backProtect.sh
*	/Library/LaunchDaemons/com.stonyrivertech.XProtect.plist

Be sure to chmod +x /usr/local/bin/backProtect.sh so it's an executable script and that the plist permisions are ```rw-r--r--  1 root  wheel```


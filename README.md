XProtectWatch
=============

XProtectWatch
-------------
This a tool to copy the XProtect.plist file whenever it changes via a User LaunchAgents.  This is not a managment system for XProtect.

Copy the files as needed:

*	/usr/local/bin/watchProtect.sh
*	~/Library/LaunchAgents/com.stonyrivertech.XProtect.plist

Be sure to chmod +x /usr/local/bin/watchProtect.sh so it's an executable script and that the plist permisions are ```rw-r--r--  1 username  staff```

Once the files are copied to your computer in the correct locations you can load the LaunchDaemon via:

```sudo launchctl load ~/Library/LaunchAgents/com.stonyrivertech.XProtect.plist```

Debug
-----
You can enable debug mode by changing the value of the following loke on watchProtect.sh
```debug_log="disabled"							#	Change to "enable" to start debug logs```

RollBack
--------
### rollBack.sh ###
THIS IS A HACK SCRIPT!  I just created this to help me test terminal-notifier to force a new update by copping the old data and removing some archives.  Not a true managment solution.

terminal-notifier
-----------------
If you want to be notified of updates via Notification Center, I've enabled some small validation items to utilize [terminal-notifier][terminal-notifier].  You can run the terminal-notifier.sh script from this repo which will download, verify md5 hash, unzip, and install to your /Applications folder.

![Terminal Notifier Example](https://zcd-03.s3-external-1.amazonaws.com/ACLIDWKJQ5ZFC%2FXR4tJbM%2Fknp30lALVCx8YBdy%2B4AiiXCBFhkYigRQKVTg1j4qjJvgWMHRDD0C2UbFmX6IfPSQ9VvIRBOGr67DvYa3yB5dT1CueKGXWWbXqy3H4Sg3RM%2FDi0UpNKjJ092aHvCVErOMGrewEave84Q3H6W%2Bg%2Bj8t2TCHVCZVZDqmbUTMxdi9tjryrJLs4CtAJ9pwDehbnFtFaVgLX79Ig2z%2FgeAAmk4QyKcIDIISCOPYTUycUzgGwTgRu3LGrSRzWT5Dtqi9FoewuDW4eleDSBk4MYm7HjpZOvQEtzok%2Bi91hVyXpg%2F1FIxjBLoWSneNTE%2F%2F356x121.jpg?Expires=1364121878&response-expires=Sun%2C%2024%20Mar%202013%2010%3A44%3A38%20GMT&response-content-disposition=filename%3D%22356x121.jpg%22&x-amz-security-token=AQoDYXdzEIH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEa4AOuGqd3ZxRm6YB9jlIV3StNgxntoktOD4PhaNq0K4BjmXne3B8ls3AbebMMU2Jy%2BgzR%2B1c5f2jeRLS4vTFZqWk45Yq2%2BOYeJ6uakkMz0unwzfN0w%2BKChVQ6m2FjuffWxKAxfZ7WVLi%2BcHJt%2B%2BFxtQm6wi%2FTmf23gtHq2TGH7GEoE%2FrMQ3Pf04BTm%2Bmpkg3WxhOjcj%2Fb55gBOil0LfTZaYnaD2xqBPkYUMr0Kdvuu5pW%2Fb0DrxUuIb0dQS57hQtD4QszMn37VCfawDQQx%2B1ckKL9UUNzyODKqSMhcImr9bUktwj6XE9WYbcoSE6OjHbrfThKcnzerfiWpHGuG311kpK9gWugoixeRdXD5kG4weCNiloDEWQo%2FwbUBXeSxB7vkzEBlBvNwwHh5oc9KuhuRPkhdGQO8pP%2Br8LmIeyNjqsM8n%2Fo0g8LgTQgpPV0yURSQuVycdSLg5%2B39w8x0KwIT5hhESAeiLaAQ4Xwyug19QevyUtDRAjW9fwVlrL1ovTb4ugFRKGTy7%2BlljmSk9zPcfaGnLjjnG5N1in12WAlOyJ5CfaSh4eCKn213CsKsE4SrEPfQckrxkB512WhP1EvGVVVsL5gnvUm0VKEK3yYq7Szq%2Fvffy%2FNIk%2Bfggc%2BMcLuQAUgotazigU%3D&AWSAccessKeyId=ASIAJA3O7BGY6U3UJFXA&Signature=QIdgiJO3E22lM7CpqRsNLrWeINE%3D "Terminal Notifier Example") 

[terminal-notifier]: https://github.com/alloy/terminal-notifier
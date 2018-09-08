--terminal中运行 $ osascript myScript.scpt


--svn://10,*,*,*/dev/*/doc/设计稿/
--svn://*,*,*,*/dev/*/doc/设计稿/商户版/六期优惠券
--svn://*,*,*,*/dev/*/doc/设计稿/APP版本/六期——优惠券
tell application "Finder"
	activate
	display dialog "检出svn地址到桌面" default answer "svn://"
	set postTitle to text returned of result as text
end tell

tell application "Terminal"
	activate
	if (count of windows) is 0 then
		tell application "System Events"
			keystroke "n" using {command down}
		end tell
	else
		activate
	end if
	
	set win to window [0]
	set currentTab to selected tab of win
	do script "cd ~/Desktop" in currentTab
	do script "svn checkout " & postTitle & " --username=ljl --password=123456" in currentTab
	delay 2
end tell
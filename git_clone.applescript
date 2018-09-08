--terminal中运行 $ osascript myScript.scpt
tell application "Finder"
	activate
	display dialog "clone的git地址到桌面(若要clone分支在地址前加 - b 分支名):" default answer "https://github.com/*/*.git"
	set postTitle to text returned of result as text
end tell

tell application "Terminal"
	activate
	--判断当前是否有窗口打开
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
	do script "git clone " & postTitle in currentTab
	delay 2
	#do script "open -a xcode"
end tell
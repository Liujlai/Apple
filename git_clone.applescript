--terminal������ $ osascript myScript.scpt
tell application "Finder"
	activate
	display dialog "clone��git��ַ������(��Ҫclone��֧�ڵ�ַǰ�� - b ��֧��):" default answer "https://github.com/*/*.git"
	set postTitle to text returned of result as text
end tell

tell application "Terminal"
	activate
	--�жϵ�ǰ�Ƿ��д��ڴ�
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
--terminal������ $ osascript myScript.scpt


--svn://10,*,*,*/dev/*/doc/��Ƹ�/
--svn://*,*,*,*/dev/*/doc/��Ƹ�/�̻���/�����Ż�ȯ
--svn://*,*,*,*/dev/*/doc/��Ƹ�/APP�汾/���ڡ����Ż�ȯ
tell application "Finder"
	activate
	display dialog "���svn��ַ������" default answer "svn://"
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
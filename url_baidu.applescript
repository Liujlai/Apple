set urlyoulu to "https://baidu.com"
tell application "Google Chrome"
	set win to make new window
	tell win
		set currtab to active tab of win
		set URL of currtab to urlyoulu
		#make new tab with properties {URL:"https:baidu.com"}
		#��������������ı�ǩҳ�ƶ����׸���ǩҳ
		#set active tab index of win to 1
	end tell
end tell

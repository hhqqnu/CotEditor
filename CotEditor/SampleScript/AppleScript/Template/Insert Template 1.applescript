(*
Insert Template 1.applescript
Sample Script for CotEditor

Description:
Replaces the selection of the frontmost window with a user-defined string, then selects the inserted string.

最前面のウィンドウの選択範囲を設定された文字列で置き換え、置き換えた文字列を選択状態にします。

written by nakamuxu on 2005-04-14
modified by 1024jp on 2014-11-22
*)

property newStr : "TEMPLATE" -- string to insert

--
tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		-- replace selected text with the template text
		set contents of selection to newStr
	end tell
end tell

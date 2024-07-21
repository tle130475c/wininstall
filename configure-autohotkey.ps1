# make directory and copy AutoHotkey script to it
New-Item -Path "c:/" -Name "autohotkey-scripts" -ItemType "directory"
Copy-Item "./open-programs.ahk" -Destination "c:/autohotkey-scripts"

# make AutoHotkey script run at startup
$file_path = "c:/autohotkey-scripts/open-programs.ahk"
$shortcut_path = "C:\Users\leanhtai01\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\open-programs.ahk.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($shortcut_path)
$shortcut.TargetPath = $file_path
$shortcut.Save()

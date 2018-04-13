sMCAFilePath = "C:\Program Files\Intel\MCA\Bin\IntelHealthcareToolTray.exe"
Set oFSO = CreateObject("Scripting.FileSystemObject") 
Set oShell = CreateObject("WScript.Shell")
oScriptFolder = oFSO.GetParentFolderName(Wscript.ScriptFullName)
Set oMCAFile = oFSO.GetFile(sMCAFilePath) 
If Not DateValue(oMCAFile.DateCreated) = DateValue("7/26/2011") Then
	sCmd = oScriptFolder & "\MCAPD_Setup.exe /qn /norestart"
	sRet = oShell.Run(sCmd, 0, True)
End If

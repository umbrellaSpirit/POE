#IfWinActive Path of Exile
#SingleInstance force
#NoEnv  
#Warn  
#Persistent

UseFlasks := false

!F12::
	UseFlasks := not UseFlasks
	if UseFlasks {
		ToolTip, Drogas On	
		SetTimer, RemoveToolTip, -1000	
	} else {
		ToolTip, Drogas off
		SetTimer, RemoveToolTip, -1000
	}
	return

RemoveToolTip:
ToolTip
return

~Space::
	if UseFlasks {
		Send 1
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 2
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 3
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
;		Send 4
;		Random, VariableDelay, -99, 99
;		Sleep, %VariableDelay%
		Send 5
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send t
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send w
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
	}
	return

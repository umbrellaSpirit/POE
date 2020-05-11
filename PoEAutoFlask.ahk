;----------------------------------------------------------------------
; PoE Flasks macro for AutoHotKey
;
; Keys used and monitored:
; alt+f12 - activate automatic flask usage
; right mouse button - primary attack skills
; 1-5 - number keys to manually use a specific flask
; ` (backtick) - use all flasks, now
;

#IfWinActive Path of Exile
#SingleInstance force
#NoEnv  
#Warn  
#Persistent

UseFlasks := false

;----------------------------------------------------------------------
; Main program loop - basics are that we use flasks whenever flask
; usage is enabled via hotkey (default is F12), and we've attacked
; within the last 0.5 second (or are channeling/continuous attacking.
;----------------------------------------------------------------------
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
;----------------------------------------------------------------------
; Use all flasks, now.  A variable delay is included between flasks
; NOTE: this will use all flasks, even those with a FlaskDurationInit of 0
;----------------------------------------------------------------------
Space::
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

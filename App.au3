#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Opt("GUIOnEventMode", 1) ; Change to OnEvent mode
Local $hMainGUI = GUICreate("Windows 10 Deployment Tool", 600, 100)
Local $hTechGUI
Local $hTechLeadGUI
Local $hPlannerGUI
Local $hTAMGUI
Local $hClientGUI

Main()


Func Main()
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
GUICtrlCreateLabel("Welcome to the Windows 10 Deployment Tool", 180, 10)
GUICtrlCreateLabel("Please select your role", 245, 30)
Local $TechB = GUICtrlCreateButton("Tech", 70, 50, 60)
Local $TechLeadB = GUICtrlCreateButton("Tech Lead", 170, 50, 60)
Local $PlannerB = GUICtrlCreateButton("Planner", 270, 50, 60)
Local $TAMB = GUICtrlCreateButton("TAM", 370, 50, 60)
Local $ClientB = GUICtrlCreateButton("Client", 470, 50, 60)
GUICtrlSetOnEvent($TechB, "TechB")
GUICtrlSetOnEvent($TechLeadB, "TechLeadB")
GUICtrlSetOnEvent($PlannerB, "PlannerB")
GUICtrlSetOnEvent($TAMB, "TAMB")
GUICtrlSetOnEvent($ClientB, "ClientB")
GUISetState(@SW_SHOW, $hMainGUI)
endFunc

While 1
    Sleep(100) ; Sleep to reduce CPU usage
WEnd

Func TechB()
	Local $hTechGUI = GUICreate("Windows 10 Deployment Tool - Tech View", 600, 700)
	GUICtrlCreateLabel("Windows 10 Deployment Tool - Tech", 180, 10)
	GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
	GUISetState(@SW_Hide, $hMainGUI)
	GUISetState(@SW_SHOW, $hTechGUI)
	
	$Label_S = GUICtrlCreateLabel("Search", 180, 40, 100, 20)
	$Input_S = GUICtrlCreateInput("", 220, 40, 105, 20)
	$RUN_S = GUICtrlCreateButton("Enter", 330, 40, 50, 20)
	
	$Label_1 = GUICtrlCreateLabel("Name", 30, 80, 100, 20)
	$Input_1 = GUICtrlCreateInput("", 80, 80, 90, 20)
	$RUN_1 = GUICtrlCreateButton("Submit", 180, 80, 50, 20)

    $Label_2 = GUICtrlCreateLabel("Address", 30, 110, 100, 20)
	$Input_2 = GUICtrlCreateInput("", 80, 110, 90, 20)
	;$RUN_2 = GUICtrlCreateButton("Submit", 180, 110, 50, 20)
	
    $Label_3 = GUICtrlCreateLabel("Time", 30, 140, 100, 20)
	$Input_3 = GUICtrlCreateInput("", 80, 140, 90, 20)
	$RUN_3 = GUICtrlCreateButton("Submit", 180, 140, 50, 20)
	
	$Label_4 = GUICtrlCreateLabel("Serial #", 30, 170, 100, 20)
	$Input_4 = GUICtrlCreateInput("", 80, 170, 90, 20)
	$RUN_4 = GUICtrlCreateButton("Submit", 180, 170, 50, 20)
	
    $Label_5 = GUICtrlCreateLabel("Safety", 250, 80, 100, 20)
	$Input_5 = GUICtrlCreateInput("", 300, 80, 90, 20)
	$RUN_5 = GUICtrlCreateButton("Submit", 400, 80, 50, 20)

    $Label_6 = GUICtrlCreateLabel("T+14", 250, 110, 100, 20)
	$Input_6 = GUICtrlCreateInput("", 300, 110, 90, 20)
	$RUN_6 = GUICtrlCreateButton("Submit", 400, 110, 50, 20)
	
    $Label_7 = GUICtrlCreateLabel("Escort", 250, 140, 100, 20)
	$Input_7 = GUICtrlCreateInput("", 300, 140, 90, 20)
	;$RUN_7 = GUICtrlCreateButton("Submit", 400, 140, 50, 20)
	
	$Label_8 = GUICtrlCreateLabel("Shift", 250, 170, 100, 20)
	$Input_8 = GUICtrlCreateInput("", 300, 170, 90, 20)
	$RUN_8 = GUICtrlCreateButton("Submit", 400, 170, 50, 20)
	
    $Label_9 = GUICtrlCreateLabel("Asset", 250, 200, 100, 20)
	$Input_9 = GUICtrlCreateInput("", 300, 200, 90, 20)
	$RUN_9 = GUICtrlCreateButton("Submit", 400, 200, 50, 20)
	
    $Label_10 = GUICtrlCreateLabel("Email", 250, 230, 100, 20)
	$Input_10 = GUICtrlCreateInput("", 300, 230, 90, 20)
	$RUN_10 = GUICtrlCreateButton("Submit", 400, 230, 50, 20)

    $Label_11 = GUICtrlCreateLabel("Phone", 250, 260, 100, 20)
	$Input_11 = GUICtrlCreateInput("", 300, 260, 90, 20)
	$RUN_11 = GUICtrlCreateButton("Submit", 400, 260, 50, 20)
	
    $Label_12 = GUICtrlCreateLabel("Contact", 250, 290, 100, 20)
	$Input_12 = GUICtrlCreateInput("", 300, 290, 90, 20)
	;$RUN_12 = GUICtrlCreateButton("Submit", 400, 290, 50, 20)
	
	$Label_13 = GUICtrlCreateLabel("Issues", 250, 320, 100, 20)
	$Input_13 = GUICtrlCreateInput("", 300, 320, 90, 20)
	$RUN_13 = GUICtrlCreateButton("Submit", 400, 320, 50, 20)
	
    $Label_14 = GUICtrlCreateLabel("Delegate", 30, 200, 100, 20)
	$Input_14 = GUICtrlCreateInput("", 80, 200, 90, 20)
	$RUN_14 = GUICtrlCreateButton("Submit", 180, 200, 50, 20)
	
    $Label_15 = GUICtrlCreateLabel("Unit", 30, 230, 100, 20)
	$Input_15 = GUICtrlCreateInput("", 80, 230, 90, 20)
	$RUN_15 = GUICtrlCreateButton("Submit", 180, 230, 50, 20)
	
    $Label_16 = GUICtrlCreateLabel("Domain", 30, 260, 100, 20)
	$Input_16 = GUICtrlCreateInput("", 80, 260, 90, 20)
	$RUN_16 = GUICtrlCreateButton("Submit", 180, 260, 50, 20)

    $Label_17 = GUICtrlCreateLabel("Database", 30, 290, 100, 20)
	$Input_17 = GUICtrlCreateInput("", 80, 290, 90, 20)
	$RUN_17 = GUICtrlCreateButton("Submit", 180, 290, 50, 20)
	
    $Label_18 = GUICtrlCreateLabel("UPN", 30, 320, 100, 20)
	$Input_18 = GUICtrlCreateInput("", 80, 320, 90, 20)
	$RUN_18 = GUICtrlCreateButton("Submit", 180, 320, 50, 20)
	
	$Label_19 = GUICtrlCreateLabel("On-Call", 30, 350, 100, 20)
	$Input_19 = GUICtrlCreateInput("", 80, 350, 90, 20)
	$RUN_19 = GUICtrlCreateButton("Submit", 180, 350, 50, 20)
EndFunc   

Func TechLeadB()
	Local $hTechLeadGUI = GUICreate("Windows 10 Deployment Tool - Tech Lead View", 600, 700)
	GUICtrlCreateLabel("Windows 10 Deployment Tool - Tech Lead", 180, 10)
	GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
	GUISetState(@SW_Hide, $hMainGUI)
	GUISetState(@SW_SHOW, $hTechLeadGUI)
	
	$Label_S = GUICtrlCreateLabel("Search", 180, 40, 100, 20)
	$Input_S = GUICtrlCreateInput("", 220, 40, 105, 20)
	$RUN_S = GUICtrlCreateButton("Enter", 330, 40, 50, 20)
	
	$Label_1 = GUICtrlCreateLabel("Name", 30, 80, 100, 20)
	$Input_1 = GUICtrlCreateInput("", 80, 80, 90, 20)
	$RUN_1 = GUICtrlCreateButton("Submit", 180, 80, 50, 20)

    $Label_2 = GUICtrlCreateLabel("Address", 30, 110, 100, 20)
	$Input_2 = GUICtrlCreateInput("", 80, 110, 90, 20)
	$RUN_2 = GUICtrlCreateButton("Submit", 180, 110, 50, 20)
	
    $Label_3 = GUICtrlCreateLabel("Time", 30, 140, 100, 20)
	$Input_3 = GUICtrlCreateInput("", 80, 140, 90, 20)
	$RUN_3 = GUICtrlCreateButton("Submit", 180, 140, 50, 20)
	
	$Label_4 = GUICtrlCreateLabel("Serial #", 30, 170, 100, 20)
	$Input_4 = GUICtrlCreateInput("", 80, 170, 90, 20)
	$RUN_4 = GUICtrlCreateButton("Submit", 180, 170, 50, 20)
	
    $Label_5 = GUICtrlCreateLabel("Safety", 250, 80, 100, 20)
	$Input_5 = GUICtrlCreateInput("", 300, 80, 90, 20)
	$RUN_5 = GUICtrlCreateButton("Submit", 400, 80, 50, 20)

    $Label_6 = GUICtrlCreateLabel("T+14", 250, 110, 100, 20)
	$Input_6 = GUICtrlCreateInput("", 300, 110, 90, 20)
	$RUN_6 = GUICtrlCreateButton("Submit", 400, 110, 50, 20)
	
    $Label_7 = GUICtrlCreateLabel("Escort", 250, 140, 100, 20)
	$Input_7 = GUICtrlCreateInput("", 300, 140, 90, 20)
	$RUN_7 = GUICtrlCreateButton("Submit", 400, 140, 50, 20)
	
	$Label_8 = GUICtrlCreateLabel("Shift", 250, 170, 100, 20)
	$Input_8 = GUICtrlCreateInput("", 300, 170, 90, 20)
	$RUN_8 = GUICtrlCreateButton("Submit", 400, 170, 50, 20)
	
    $Label_9 = GUICtrlCreateLabel("Asset", 250, 200, 100, 20)
	$Input_9 = GUICtrlCreateInput("", 300, 200, 90, 20)
	$RUN_9 = GUICtrlCreateButton("Submit", 400, 200, 50, 20)
	
    $Label_10 = GUICtrlCreateLabel("Email", 250, 230, 100, 20)
	$Input_10 = GUICtrlCreateInput("", 300, 230, 90, 20)
	$RUN_10 = GUICtrlCreateButton("Submit", 400, 230, 50, 20)

    $Label_11 = GUICtrlCreateLabel("Phone", 250, 260, 100, 20)
	$Input_11 = GUICtrlCreateInput("", 300, 260, 90, 20)
	$RUN_11 = GUICtrlCreateButton("Submit", 400, 260, 50, 20)
	
    $Label_12 = GUICtrlCreateLabel("Contact", 250, 290, 100, 20)
	$Input_12 = GUICtrlCreateInput("", 300, 290, 90, 20)
	$RUN_12 = GUICtrlCreateButton("Submit", 400, 290, 50, 20)
	
	$Label_13 = GUICtrlCreateLabel("Issues", 250, 320, 100, 20)
	$Input_13 = GUICtrlCreateInput("", 300, 320, 90, 20)
	$RUN_13 = GUICtrlCreateButton("Submit", 400, 320, 50, 20)
	
    $Label_14 = GUICtrlCreateLabel("Delegate", 30, 200, 100, 20)
	$Input_14 = GUICtrlCreateInput("", 80, 200, 90, 20)
	$RUN_14 = GUICtrlCreateButton("Submit", 180, 200, 50, 20)
	
    $Label_15 = GUICtrlCreateLabel("Unit", 30, 230, 100, 20)
	$Input_15 = GUICtrlCreateInput("", 80, 230, 90, 20)
	$RUN_15 = GUICtrlCreateButton("Submit", 180, 230, 50, 20)
	
    $Label_16 = GUICtrlCreateLabel("Domain", 30, 260, 100, 20)
	$Input_16 = GUICtrlCreateInput("", 80, 260, 90, 20)
	$RUN_16 = GUICtrlCreateButton("Submit", 180, 260, 50, 20)

    $Label_17 = GUICtrlCreateLabel("Database", 30, 290, 100, 20)
	$Input_17 = GUICtrlCreateInput("", 80, 290, 90, 20)
	$RUN_17 = GUICtrlCreateButton("Submit", 180, 290, 50, 20)
	
    $Label_18 = GUICtrlCreateLabel("UPN", 30, 320, 100, 20)
	$Input_18 = GUICtrlCreateInput("", 80, 320, 90, 20)
	$RUN_18 = GUICtrlCreateButton("Submit", 180, 320, 50, 20)
	
	$Label_19 = GUICtrlCreateLabel("On-Call", 30, 350, 100, 20)
	$Input_19 = GUICtrlCreateInput("", 80, 350, 90, 20)
	$RUN_19 = GUICtrlCreateButton("Submit", 180, 350, 50, 20)
    ;MsgBox($MB_OK, "GUI Event", "You selected Tech Lead!")
EndFunc 

Func PlannerB()
	Local $hPlannerGUI = GUICreate("Windows 10 Deployment Tool - Planner View", 600, 700)
	GUICtrlCreateLabel("Windows 10 Deployment Tool - Planner", 180, 10)
	GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
	GUISetState(@SW_Hide, $hMainGUI)
	GUISetState(@SW_SHOW, $hPlannerGUI)
	
	$Label_S = GUICtrlCreateLabel("Search", 180, 40, 100, 20)
	$Input_S = GUICtrlCreateInput("", 220, 40, 105, 20)
	$RUN_S = GUICtrlCreateButton("Enter", 330, 40, 50, 20)
	
	$Label_1 = GUICtrlCreateLabel("Name", 30, 80, 100, 20)
	$Input_1 = GUICtrlCreateInput("", 80, 80, 90, 20)
	$RUN_1 = GUICtrlCreateButton("Submit", 180, 80, 50, 20)

    $Label_2 = GUICtrlCreateLabel("Address", 30, 110, 100, 20)
	$Input_2 = GUICtrlCreateInput("", 80, 110, 90, 20)
	$RUN_2 = GUICtrlCreateButton("Submit", 180, 110, 50, 20)
	
    $Label_3 = GUICtrlCreateLabel("Time", 30, 140, 100, 20)
	$Input_3 = GUICtrlCreateInput("", 80, 140, 90, 20)
	$RUN_3 = GUICtrlCreateButton("Submit", 180, 140, 50, 20)
	
	$Label_4 = GUICtrlCreateLabel("Serial #", 30, 170, 100, 20)
	$Input_4 = GUICtrlCreateInput("", 80, 170, 90, 20)
	;$RUN_4 = GUICtrlCreateButton("Submit", 180, 170, 50, 20)
	
    $Label_5 = GUICtrlCreateLabel("Safety", 250, 80, 100, 20)
	$Input_5 = GUICtrlCreateInput("", 300, 80, 90, 20)
	$RUN_5 = GUICtrlCreateButton("Submit", 400, 80, 50, 20)

    $Label_6 = GUICtrlCreateLabel("T+14", 250, 110, 100, 20)
	$Input_6 = GUICtrlCreateInput("", 300, 110, 90, 20)
	$RUN_6 = GUICtrlCreateButton("Submit", 400, 110, 50, 20)
	
    $Label_7 = GUICtrlCreateLabel("Escort", 250, 140, 100, 20)
	$Input_7 = GUICtrlCreateInput("", 300, 140, 90, 20)
	$RUN_7 = GUICtrlCreateButton("Submit", 400, 140, 50, 20)
	
	$Label_8 = GUICtrlCreateLabel("Shift", 250, 170, 100, 20)
	$Input_8 = GUICtrlCreateInput("", 300, 170, 90, 20)
	$RUN_8 = GUICtrlCreateButton("Submit", 400, 170, 50, 20)
	
    $Label_9 = GUICtrlCreateLabel("Asset", 250, 200, 100, 20)
	$Input_9 = GUICtrlCreateInput("", 300, 200, 90, 20)
	;$RUN_9 = GUICtrlCreateButton("Submit", 400, 200, 50, 20)
	
    $Label_10 = GUICtrlCreateLabel("Email", 250, 230, 100, 20)
	$Input_10 = GUICtrlCreateInput("", 300, 230, 90, 20)
	$RUN_10 = GUICtrlCreateButton("Submit", 400, 230, 50, 20)

    $Label_11 = GUICtrlCreateLabel("Phone", 250, 260, 100, 20)
	$Input_11 = GUICtrlCreateInput("", 300, 260, 90, 20)
	$RUN_11 = GUICtrlCreateButton("Submit", 400, 260, 50, 20)
	
    $Label_12 = GUICtrlCreateLabel("Contact", 250, 290, 100, 20)
	$Input_12 = GUICtrlCreateInput("", 300, 290, 90, 20)
	$RUN_12 = GUICtrlCreateButton("Submit", 400, 290, 50, 20)
	
	$Label_13 = GUICtrlCreateLabel("Issues", 250, 320, 100, 20)
	$Input_13 = GUICtrlCreateInput("", 300, 320, 90, 20)
	$RUN_13 = GUICtrlCreateButton("Submit", 400, 320, 50, 20)
	
    $Label_14 = GUICtrlCreateLabel("Delegate", 30, 200, 100, 20)
	$Input_14 = GUICtrlCreateInput("", 80, 200, 90, 20)
	$RUN_14 = GUICtrlCreateButton("Submit", 180, 200, 50, 20)
	
    $Label_15 = GUICtrlCreateLabel("Unit", 30, 230, 100, 20)
	$Input_15 = GUICtrlCreateInput("", 80, 230, 90, 20)
	;$RUN_15 = GUICtrlCreateButton("Submit", 180, 230, 50, 20)
	
    $Label_16 = GUICtrlCreateLabel("Domain", 30, 260, 100, 20)
	$Input_16 = GUICtrlCreateInput("", 80, 260, 90, 20)
	;$RUN_16 = GUICtrlCreateButton("Submit", 180, 260, 50, 20)

    $Label_17 = GUICtrlCreateLabel("Database", 30, 290, 100, 20)
	$Input_17 = GUICtrlCreateInput("", 80, 290, 90, 20)
	;$RUN_17 = GUICtrlCreateButton("Submit", 180, 290, 50, 20)
	
    $Label_18 = GUICtrlCreateLabel("UPN", 30, 320, 100, 20)
	$Input_18 = GUICtrlCreateInput("", 80, 320, 90, 20)
	;$RUN_18 = GUICtrlCreateButton("Submit", 180, 320, 50, 20)
	
	$Label_19 = GUICtrlCreateLabel("On-Call", 30, 350, 100, 20)
	$Input_19 = GUICtrlCreateInput("", 80, 350, 90, 20)
	$RUN_19 = GUICtrlCreateButton("Submit", 180, 350, 50, 20)
EndFunc 

Func TAMB()
	Local $hTAMGUI = GUICreate("Windows 10 Deployment Tool - Tech View", 600, 700)
	GUICtrlCreateLabel("Windows 10 Deployment Tool - Tech", 180, 10)
	GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
	GUISetState(@SW_Hide, $hMainGUI)
	GUISetState(@SW_SHOW, $hTAMGUI)
	
	$Label_S = GUICtrlCreateLabel("Search", 180, 40, 100, 20)
	$Input_S = GUICtrlCreateInput("", 220, 40, 105, 20)
	$RUN_S = GUICtrlCreateButton("Enter", 330, 40, 50, 20)
	
	$Label_1 = GUICtrlCreateLabel("Name", 30, 80, 100, 20)
	$Input_1 = GUICtrlCreateInput("", 80, 80, 90, 20)
	$RUN_1 = GUICtrlCreateButton("Submit", 180, 80, 50, 20)

    $Label_2 = GUICtrlCreateLabel("Address", 30, 110, 100, 20)
	$Input_2 = GUICtrlCreateInput("", 80, 110, 90, 20)
	$RUN_2 = GUICtrlCreateButton("Submit", 180, 110, 50, 20)
	
    $Label_3 = GUICtrlCreateLabel("Time", 30, 140, 100, 20)
	$Input_3 = GUICtrlCreateInput("", 80, 140, 90, 20)
	$RUN_3 = GUICtrlCreateButton("Submit", 180, 140, 50, 20)
	
	$Label_4 = GUICtrlCreateLabel("Serial #", 30, 170, 100, 20)
	$Input_4 = GUICtrlCreateInput("", 80, 170, 90, 20)
	;$RUN_4 = GUICtrlCreateButton("Submit", 180, 170, 50, 20)
	
    $Label_5 = GUICtrlCreateLabel("Safety", 250, 80, 100, 20)
	$Input_5 = GUICtrlCreateInput("", 300, 80, 90, 20)
	$RUN_5 = GUICtrlCreateButton("Submit", 400, 80, 50, 20)

    $Label_6 = GUICtrlCreateLabel("T+14", 250, 110, 100, 20)
	$Input_6 = GUICtrlCreateInput("", 300, 110, 90, 20)
	$RUN_6 = GUICtrlCreateButton("Submit", 400, 110, 50, 20)
	
    $Label_7 = GUICtrlCreateLabel("Escort", 250, 140, 100, 20)
	$Input_7 = GUICtrlCreateInput("", 300, 140, 90, 20)
	$RUN_7 = GUICtrlCreateButton("Submit", 400, 140, 50, 20)
	
	$Label_8 = GUICtrlCreateLabel("Shift", 250, 170, 100, 20)
	$Input_8 = GUICtrlCreateInput("", 300, 170, 90, 20)
	$RUN_8 = GUICtrlCreateButton("Submit", 400, 170, 50, 20)
	
    $Label_9 = GUICtrlCreateLabel("Asset", 250, 200, 100, 20)
	$Input_9 = GUICtrlCreateInput("", 300, 200, 90, 20)
	$RUN_9 = GUICtrlCreateButton("Submit", 400, 200, 50, 20)
	
    $Label_10 = GUICtrlCreateLabel("Email", 250, 230, 100, 20)
	$Input_10 = GUICtrlCreateInput("", 300, 230, 90, 20)
	;$RUN_10 = GUICtrlCreateButton("Submit", 400, 230, 50, 20)

    $Label_11 = GUICtrlCreateLabel("Phone", 250, 260, 100, 20)
	$Input_11 = GUICtrlCreateInput("", 300, 260, 90, 20)
	;$RUN_11 = GUICtrlCreateButton("Submit", 400, 260, 50, 20)
	
    $Label_12 = GUICtrlCreateLabel("Contact", 250, 290, 100, 20)
	$Input_12 = GUICtrlCreateInput("", 300, 290, 90, 20)
	;$RUN_12 = GUICtrlCreateButton("Submit", 400, 290, 50, 20)
	
	$Label_13 = GUICtrlCreateLabel("Issues", 250, 320, 100, 20)
	$Input_13 = GUICtrlCreateInput("", 300, 320, 90, 20)
	$RUN_13 = GUICtrlCreateButton("Submit", 400, 320, 50, 20)
	
    $Label_14 = GUICtrlCreateLabel("Delegate", 30, 200, 100, 20)
	$Input_14 = GUICtrlCreateInput("", 80, 200, 90, 20)
	$RUN_14 = GUICtrlCreateButton("Submit", 180, 200, 50, 20)
	
    $Label_15 = GUICtrlCreateLabel("Unit", 30, 230, 100, 20)
	$Input_15 = GUICtrlCreateInput("", 80, 230, 90, 20)
	$RUN_15 = GUICtrlCreateButton("Submit", 180, 230, 50, 20)
	
    $Label_16 = GUICtrlCreateLabel("Domain", 30, 260, 100, 20)
	$Input_16 = GUICtrlCreateInput("", 80, 260, 90, 20)
	;$RUN_16 = GUICtrlCreateButton("Submit", 180, 260, 50, 20)

    $Label_17 = GUICtrlCreateLabel("Database", 30, 290, 100, 20)
	$Input_17 = GUICtrlCreateInput("", 80, 290, 90, 20)
	$RUN_17 = GUICtrlCreateButton("Submit", 180, 290, 50, 20)
	
    $Label_18 = GUICtrlCreateLabel("UPN", 30, 320, 100, 20)
	$Input_18 = GUICtrlCreateInput("", 80, 320, 90, 20)
	$RUN_18 = GUICtrlCreateButton("Submit", 180, 320, 50, 20)
	
	$Label_19 = GUICtrlCreateLabel("On-Call", 30, 350, 100, 20)
	$Input_19 = GUICtrlCreateInput("", 80, 350, 90, 20)
	;$RUN_19 = GUICtrlCreateButton("Submit", 180, 350, 50, 20)
EndFunc 

Func ClientB()
	Local $hClientGUI = GUICreate("Windows 10 Deployment Tool - Client View", 600, 700)
	GUICtrlCreateLabel("Windows 10 Deployment Tool - Client", 180, 10)
	GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
	GUISetState(@SW_Hide, $hMainGUI)
	GUISetState(@SW_SHOW, $hClientGUI)
	$BackB = GUICtrlCreateButton("Back", 0, 0, 50, 20)
	GUICtrlSetOnEvent($BackB, "BackB")

    $Label_S = GUICtrlCreateLabel("Search", 180, 40, 100, 20)
	$Input_S = GUICtrlCreateInput("", 220, 40, 105, 20)
	$RUN_S = GUICtrlCreateButton("Enter", 330, 40, 50, 20)
	
	$Label_1 = GUICtrlCreateLabel("Name", 30, 80, 100, 20)
	$Input_1 = GUICtrlCreateInput("", 80, 80, 90, 20)
	;$RUN_1 = GUICtrlCreateButton("Submit", 180, 80, 50, 20)

    $Label_2 = GUICtrlCreateLabel("Address", 30, 110, 100, 20)
	$Input_2 = GUICtrlCreateInput("", 80, 110, 90, 20)
	;$RUN_2 = GUICtrlCreateButton("Submit", 180, 110, 50, 20)
	
    $Label_3 = GUICtrlCreateLabel("Time", 30, 140, 100, 20)
	$Input_3 = GUICtrlCreateInput("", 80, 140, 90, 20)
	;$RUN_3 = GUICtrlCreateButton("Submit", 180, 140, 50, 20)
	
	$Label_4 = GUICtrlCreateLabel("Serial #", 30, 170, 100, 20)
	$Input_4 = GUICtrlCreateInput("", 80, 170, 90, 20)
	;$RUN_4 = GUICtrlCreateButton("Submit", 180, 170, 50, 20)
	
    $Label_5 = GUICtrlCreateLabel("Safety", 250, 80, 100, 20)
	$Input_5 = GUICtrlCreateInput("", 300, 80, 90, 20)
	;$RUN_5 = GUICtrlCreateButton("Submit", 400, 80, 50, 20)

    $Label_6 = GUICtrlCreateLabel("T+14", 250, 110, 100, 20)
	$Input_6 = GUICtrlCreateInput("", 300, 110, 90, 20)
	;$RUN_6 = GUICtrlCreateButton("Submit", 400, 110, 50, 20)
	
    $Label_7 = GUICtrlCreateLabel("Escort", 250, 140, 100, 20)
	$Input_7 = GUICtrlCreateInput("", 300, 140, 90, 20)
	;$RUN_7 = GUICtrlCreateButton("Submit", 400, 140, 50, 20)
	
	$Label_8 = GUICtrlCreateLabel("Shift", 250, 170, 100, 20)
	$Input_8 = GUICtrlCreateInput("", 300, 170, 90, 20)
	;$RUN_8 = GUICtrlCreateButton("Submit", 400, 170, 50, 20)
	
    $Label_9 = GUICtrlCreateLabel("Asset", 250, 200, 100, 20)
	$Input_9 = GUICtrlCreateInput("", 300, 200, 90, 20)
	;$RUN_9 = GUICtrlCreateButton("Submit", 400, 200, 50, 20)
	
    $Label_10 = GUICtrlCreateLabel("Email", 250, 230, 100, 20)
	$Input_10 = GUICtrlCreateInput("", 300, 230, 90, 20)
	;$RUN_10 = GUICtrlCreateButton("Submit", 400, 230, 50, 20)

    $Label_11 = GUICtrlCreateLabel("Phone", 250, 260, 100, 20)
	$Input_11 = GUICtrlCreateInput("", 300, 260, 90, 20)
	;$RUN_11 = GUICtrlCreateButton("Submit", 400, 260, 50, 20)
	
    $Label_12 = GUICtrlCreateLabel("Contact", 250, 290, 100, 20)
	$Input_12 = GUICtrlCreateInput("", 300, 290, 90, 20)
	;$RUN_12 = GUICtrlCreateButton("Submit", 400, 290, 50, 20)
	
	$Label_13 = GUICtrlCreateLabel("Issues", 250, 320, 100, 20)
	$Input_13 = GUICtrlCreateInput("", 300, 320, 90, 20)
	;$RUN_13 = GUICtrlCreateButton("Submit", 400, 320, 50, 20)
	
    $Label_14 = GUICtrlCreateLabel("Delegate", 30, 200, 100, 20)
	$Input_14 = GUICtrlCreateInput("", 80, 200, 90, 20)
	;$RUN_14 = GUICtrlCreateButton("Submit", 180, 200, 50, 20)
	
    $Label_15 = GUICtrlCreateLabel("Unit", 30, 230, 100, 20)
	$Input_15 = GUICtrlCreateInput("", 80, 230, 90, 20)
	;$RUN_15 = GUICtrlCreateButton("Submit", 180, 230, 50, 20)
	
    $Label_16 = GUICtrlCreateLabel("Domain", 30, 260, 100, 20)
	$Input_16 = GUICtrlCreateInput("", 80, 260, 90, 20)
	;$RUN_16 = GUICtrlCreateButton("Submit", 180, 260, 50, 20)

    $Label_17 = GUICtrlCreateLabel("Database", 30, 290, 100, 20)
	$Input_17 = GUICtrlCreateInput("", 80, 290, 90, 20)
	;$RUN_17 = GUICtrlCreateButton("Submit", 180, 290, 50, 20)
	
    $Label_18 = GUICtrlCreateLabel("UPN", 30, 320, 100, 20)
	$Input_18 = GUICtrlCreateInput("", 80, 320, 90, 20)
	;$RUN_18 = GUICtrlCreateButton("Submit", 180, 320, 50, 20)
	
	$Label_19 = GUICtrlCreateLabel("On-Call", 30, 350, 100, 20)
	$Input_19 = GUICtrlCreateInput("", 80, 350, 90, 20)
	;$RUN_19 = GUICtrlCreateButton("Submit", 180, 350, 50, 20)
EndFunc 

Func BackB()
	GUISetState(@SW_HIDE, $hClientGUI)
	Return Main()
EndFunc

Func CLOSEB()
    Exit
EndFunc   




#comments-start
Local $hMainGUI = GUICreate("Win", 200, 100)
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEB")
GUICtrlCreateLabel("Hello world! How are you?", 30, 10)
Local $TechB = GUICtrlCreateB("OK", 70, 50, 60)
GUICtrlSetOnEvent($TechB, "OKB")
GUISetState(@SW_SHOW, $hMainGUI)

While 1
    Sleep(100) ; Sleep to reduce CPU usage
WEnd

Func OKB()
    ; Note: At this point @GUI_CtrlId would equal $TechB,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected OK!")
EndFunc   ;==>OKB

Func CLOSEB()
    ; Note: At this point @GUI_CtrlId would equal $GUI_EVENT_CLOSE,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected CLOSE! Exiting...")
    Exit
EndFunc   ;==>CLOSEB
#comments-end

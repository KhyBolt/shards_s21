#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F4::pause, toggle
F5::
ExitApp

; Start macro in the ikora screen

F3::
{
    slot := 0.5 ;chest
    ;slot := 0.38 ; gloves
    ;slot := 0.27 ; head



    WinActivate, Destiny 2
    loop,
    {
    Sleep, 1000
    Click, % A_ScreenWidth*0.6 " " A_ScreenHeight*0.6 " " 0
    Sleep, 200
    Click, % A_ScreenWidth*0.6 " " A_ScreenHeight*0.6 " " 0
    Sleep, 500
 
    ; reacquire 9 chests
    loop, 9
    {
        Send, {LButton Down}
        Sleep, 10
        Send, {LButton Up}
        Sleep, 750
    }

    ; open inventory
    Send, i
    Sleep, 600
    ; hover over chests
    Click, % A_ScreenWidth*0.72813 " " A_ScreenHeight*slot " " 0
    Sleep, 200
    ; hover over chests to delete 
    Click, % A_ScreenWidth*0.78438 " " A_ScreenHeight*slot " " 0
    Sleep, 100

    ; delete all chests
    loop, 9 
    {
        Send, {f Down}
        Sleep, 4200
        Send, {f Up}
        Sleep, 750
    }
    Send, {Esc}
    Sleep, 1950
    }
    
}
Return


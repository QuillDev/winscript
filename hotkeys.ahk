#SingleInstance force

; Close window with custom hotkey
#+q::
    if(!(WinActive("ahk_class Progman")
        || WinActive("ahk_class Shell_TrayWnd"))){
        
        ; close the window
        !F4::WinClose, A
    }
Return

#Enter::
    Run %a_scriptdir%\Shell.lnk
Return

#+r::
    Run %a_scriptdir%\hotkeys.ahk
    Exit
Return
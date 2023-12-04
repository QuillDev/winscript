#SingleInstance force

; Path to your shell launcher
SHELL_PATH = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash - Admin.lnk"

; Close the active window with WIN+SHIFT+Q
#+q::
    if(!(WinActive("ahk_class Progman")
        || WinActive("ahk_class Shell_TrayWnd"))){
        
        ; close the window
        !F4::WinClose, A
    }
Return

; Open a new shell process with WIN+ENTER
#Enter::
    Run %SHELL_PATH%
Return

#f::
    Run explorer
Return

; Reload this script with WIN+SHIFT+R
#+r::
    Run %A_ScriptDir%\%A_ScriptName%
    Exit
Return

#d::
    Send #
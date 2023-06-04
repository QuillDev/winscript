#SingleInstance force

; Path to your shell launcher
SHELL_PATH = "%appdata%\Microsoft\Windows\Start Menu\Programs\Windows Powershell\Windows Powershell.lnk"

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

; Reload this script with WIN+SHIFT+R
#+r::
    Run %A_ScriptDir%\%A_ScriptName%
    Exit
Return
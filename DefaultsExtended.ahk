; █▀▄ █▀▀ █▀▀ ▄▀█ █░█ █░░ ▀█▀ █▀ █▀▀ ▀▄▀ ▀█▀ █▀▀ █▄░█ █▀▄ █▀▀ █▀▄
; █▄▀ ██▄ █▀░ █▀█ █▄█ █▄▄ ░█░ ▄█ ██▄ █░█ ░█░ ██▄ █░▀█ █▄▀ ██▄ █▄▀
; 0=============================================================================================0
;EDITING KEYS:
; ^ = ctrl
; ! = alt
; + = shift
; 0=============================================================================================0
;Move to start/end of line
;Ctrl & Alt & Right::
^!Left::
    Send {Home}
    return

^!Right::
    Send {End}
    return
; 0==============================================================================================================0
;Move to start/end of file
;Ctrl Alt Up
^!Up::
    Send {Ctrl Down}{Home}{Ctrl Up}
    return

;Ctrl Alt Down
^!Down::
    Send {Ctrl Down}{End}{Ctrl Up}
    return
; 0==============================================================================================================0
;Select line
^!+Left::
    Send {Shift Down}{Home}{Shift Up}
    return

^!+Right::
    Send {Shift Down}{End}{Shift Up}
    return
; 0==============================================================================================================0
;Select from location to start/end
^!+Up::
    Send {Shift Down}{Ctrl Down}{Home}{Ctrl Up}{Shift Up}
    return

^!+Down::
    Send {Shift Down}{Ctrl Down}{End}{Ctrl Up}{Shift Up}
    return
; 0==============================================================================================================0
;Delete line
;Ctrl Shift D
^+d::
    SetKeyDelay -1
    Send {Shift Down}{Home}{Shift Up}{Space}{Home}{Shift Down}{End}{Shift Up}{Del}{Del}
    return

; 0==============================================================================================================0
!c::
    Run "calc"
    return

;Adding explorer.exe makes it so it does not run as admin if needed.
^!t::
    ; Run, explorer.exe "C:\Program Files\WezTerm\wezterm-gui.exe"
    ; Run "pwsh"
return

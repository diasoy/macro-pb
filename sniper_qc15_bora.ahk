; Point Blank Macro - Mouse 5 Auto Action
; Tekan Mouse 5 (XButton2) untuk trigger macro
; Tekan F6 untuk toggle ON/OFF
; Tekan CTRL+ESC untuk exit (agar tidak mati sendiri)

#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Event"  ; Ubah ke Event mode untuk game compatibility
SetMouseDelay 10  ; Delay untuk mouse movement
SetKeyDelay 10, 10  ; Delay untuk keystroke
Persistent  ; Buat script tetap berjalan

; Variable untuk toggle macro
MacroEnabled := true
MacroRunning := false

; Tampilkan status awal
TrayTip "Macro ENABLED - Tekan F6 untuk toggle`nHOLD Mouse 5 untuk loop unlimited`nTekan CTRL+ESC untuk exit", "Point Blank Macro"

; Mouse 5 (XButton2 - tombol Back) - HOLD untuk loop unlimited
XButton2::
{
    global MacroEnabled, MacroRunning
    if (MacroEnabled) {
        MacroRunning := true
        ; Loop selama Mouse 5 masih di-hold
        while (MacroRunning && GetKeyState("XButton2", "P")) {
            ; Klik Kanan menggunakan MouseClick untuk lebih reliable
            MouseClick "Right"
            Sleep 30
            
            ; Klik Kiri
            MouseClick "Left"
            Sleep 30
            
            ; Tekan 3 dengan SendEvent
            SendEvent "{3}"
            Sleep 30
            
            ; Tekan 1
            SendEvent "{1}"
            Sleep 800  ; Delay 1 detik sebelum mengulang loop
        }
        MacroRunning := false
    }
}

; F6 untuk toggle macro ON/OFF
F6::
{
    global MacroEnabled
    MacroEnabled := !MacroEnabled
    if (MacroEnabled) {
        TrayTip "Macro ENABLED", "Point Blank Macro"
        SoundBeep 1000, 100
    } else {
        TrayTip "Macro DISABLED", "Point Blank Macro"
        SoundBeep 500, 100
    }
}

; CTRL+ESC untuk exit (bukan ESC biasa agar tidak mati sendiri)
^Esc::
{
    TrayTip "Exiting...", "Point Blank Macro"
    Sleep 500
    ExitApp
}

; F7 untuk restart macro jika terjadi error
F7::
{
    global MacroEnabled, MacroRunning
    MacroRunning := false
    MacroEnabled := true
    TrayTip "Macro RESTARTED", "Point Blank Macro"
    SoundBeep 750, 150
}

; Jika ingin menggunakan XButton1 (tombol Forward) sebagai gantinya, uncomment baris di bawah:
; XButton1::
; {
;     global MacroEnabled
;     if (MacroEnabled) {
;         Click "Right"
;         Sleep 50
;         Click "Left"
;         Sleep 50
;         Send "3"
;         Sleep 50
;         Send "1"
;         Sleep 50
;     }
; }

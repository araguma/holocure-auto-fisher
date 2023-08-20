#Requires AutoHotkey v2.0

CoordMode "Pixel"

if WinExist("HoloCure") {
    WinGetPos &X, &Y, &W, &H
    X := X + 784
    Y := Y + 488
    X2 := X + 1
    Y2 := Y + 50
    loop {
        if ImageSearch(&FoundX, &FoundY, X, Y, X2, Y2, "*TransBlack *16 " A_ScriptDir "/images/up.png") {
            Send "{w down}"
            Sleep 50
            Send "{w up}"
        }
        else if ImageSearch(&FoundX, &FoundY, X, Y, X2, Y2, "*TransBlack *16 " A_ScriptDir "/images/down.png") {
            Send "{s down}"
            Sleep 50
            Send "{s up}"
        }
        else if ImageSearch(&FoundX, &FoundY, X, Y, X2, Y2, "*TransBlack *16 " A_ScriptDir "/images/left.png") {
            Send "{a down}"
            Sleep 50
            Send "{a up}"
        }
        else if ImageSearch(&FoundX, &FoundY, X, Y, X2, Y2, "*TransBlack *16 " A_ScriptDir "/images/right.png") {
            Send "{d down}"
            Sleep 50
            Send "{d up}"
        }
        else if ImageSearch(&FoundX, &FoundY, X, Y, X2, Y2, "*TransBlack *16 " A_ScriptDir "/images/space.png") {
            Send "{space down}"
            Sleep 50
            Send "{space up}"
        }
    }
}
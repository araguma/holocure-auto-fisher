#Requires AutoHotkey v2.0

CoordMode "Pixel"

if WinExist("HoloCure") {
    WinGetPos &X, &Y
    X := X + 784
    Y := Y + 490
    loop {
        if(PixelGetColor(X, Y) == "0xFBFBFB") {
            if(PixelGetColor(X, Y + 42) == "0xE13232") {
                Send "{w down}"
                Sleep 50
                Send "{w up}"
            }
            if(PixelGetColor(X, Y + 48) == "0x3490F5") {
                Send "{s down}"
                Sleep 50
                Send "{s up}"
            }
            if(PixelGetColor(X, Y + 40) == "0xF5C543") {
                Send "{a down}"
                Sleep 50
                Send "{a up}"
            }
            if(PixelGetColor(X, Y + 40) == "0x2DEB2B") {
                Send "{d down}"
                Sleep 50
                Send "{d up}"
            }
            if(PixelGetColor(X, Y + 30) == "0xAE31D0") {
                Send "{space down}"
                Sleep 50
                Send "{space up}"
            }
        }
    }
}
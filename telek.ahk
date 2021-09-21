#NoEnv

If !FileExist("fon.bmp")
	URLDownloadToFile, github.com/Dalersion/ahk_telek/raw/main/telek.png

WM_LBUTTONDOWN()
{
	WM_NCLBUTTONDOWN := 0xA1, HTCAPTION := 2
	PostMessage, WM_NCLBUTTONDOWN, HTCAPTION
}

c=ffffff
gui, color, %c%
Gui, Add, Picture, x-8 y-11 w540 h410 , telek.png
gui,  +AlwaysOnTop +LastFound +ToolWindow -Caption -Border
WinSet, TransColor, %c% 255
OnMessage(0x201, "WM_LBUTTONDOWN") 
Gui, Show, w526 h379, Untitled GUI
return

GuiClose:
ExitApp

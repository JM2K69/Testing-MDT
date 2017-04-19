cls
set CuDIR=%CD%
if exist C:\MININT rd C:\MININT /s /q
cscript ZTIGather.wsf
Xcopy C:\MININT\SMSOSD\OSDLOGS\VARIABLES.DAT %CuDIR% /Y
TsmBootstrap.exe /env:SAStart
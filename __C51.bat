@echo off
::This file was created automatically by CrossIDE to compile with C51.
D:
cd "\DevFiles\ELEC291_Dev_Files\Project2\"
"C:\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.c"
if not exist hex2mif.exe goto done
if exist Receiver.ihx hex2mif Receiver.ihx
if exist Receiver.hex hex2mif Receiver.hex
:done
echo done
echo Crosside_Action Set_Hex_File D:\DevFiles\ELEC291_Dev_Files\Project2\Receiver.hex

@echo off
::This file was created automatically by CrossIDE to compile with C51.
D:
cd "\DevFiles\ELEC291_Dev_Files\Project2\"
"C:\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "D:\DevFiles\ELEC291_Dev_Files\Project2\pwm_F38x.c"
if not exist hex2mif.exe goto done
if exist pwm_F38x.ihx hex2mif pwm_F38x.ihx
if exist pwm_F38x.hex hex2mif pwm_F38x.hex
:done
echo done
echo Crosside_Action Set_Hex_File D:\DevFiles\ELEC291_Dev_Files\Project2\pwm_F38x.hex

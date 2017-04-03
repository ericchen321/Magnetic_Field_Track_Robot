@echo off
::This file was created automatically by CrossIDE to compile with C51.
D:
cd "\DevFiles\ELEC291_Dev_Files\Project2\"
"C:\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "D:\DevFiles\ELEC291_Dev_Files\Project2\Test_ADC_Read_V2.c"
if not exist hex2mif.exe goto done
if exist Test_ADC_Read_V2.ihx hex2mif Test_ADC_Read_V2.ihx
if exist Test_ADC_Read_V2.hex hex2mif Test_ADC_Read_V2.hex
:done
echo done
echo Crosside_Action Set_Hex_File D:\DevFiles\ELEC291_Dev_Files\Project2\Test_ADC_Read_V2.hex

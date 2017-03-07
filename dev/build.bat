@echo off
REM echo Build assets.c and assets.h from assets folder
folder2c assets assets
sdcc -c -mz80 assets.c
if %errorlevel% NEQ 0 goto :EOF
REM echo Build Main
sdcc -c -mz80 main.c
if %errorlevel% NEQ 0 goto :EOF
REM echo Linking
sdcc -o output.ihx -mz80 --data-loc 0xC000 --no-std-crt0 crt0/crt0_sms.rel main.rel lib/SMSlib.lib assets.rel
if %errorlevel% NEQ 0 goto :EOF
ihx2sms output.ihx output.sms

copy output.sms output
cd output
smsexamine.exe output.sms
cd ..

del *.asm > nul
del *.ihx > nul
del *.lk > nul
del *.lst > nul
del *.map > nul
del *.noi > nul
del *.sym > nul

output.sms
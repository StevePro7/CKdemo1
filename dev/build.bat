@echo off
REM echo Build gfx.c and gfx.h from gfx folder
REM ..\utl\folder2c ..\gfx gfx
REM ..\utl\folder2c ..\psg psg

REM echo Build gfx
REM sdcc -c -mz80 gfx.c
if %errorlevel% NEQ 0 goto :EOF

REM echo Build psg
REM sdcc -c -mz80 psg.c
if %errorlevel% NEQ 0 goto :EOF

REM echo Build main
sdcc -c -mz80 main.c
if %errorlevel% NEQ 0 goto :EOF

REM echo Linking
sdcc -o output.ihx -mz80 --data-loc 0xC000 --no-std-crt0 ..\crt0\crt0_sms.rel main.rel ..\lib\SMSlib.lib ..\lib\PSGlib.rel gfx.rel psg.rel
if %errorlevel% NEQ 0 goto :EOF

REM echo Binary output
..\utl\ihx2sms output.ihx output.sms
if %errorlevel% NEQ 0 goto :EOF

REM echo Copy output
copy output.sms ..\asm
copy output.sms ..\CKdemo1.sms

REM echo Disassemble output
cd ..\asm
smsexamine.exe output.sms
cd ..\dev

REM echo Delete
del *.asm > nul
del *.ihx > nul
del *.lk > nul
del *.lst > nul
del *.map > nul
del *.noi > nul
REM del *.rel > nul
del *.sym > nul

output.sms
@echo off
:input
title CX�����Զ���ȡ VER:2.5 DATE:21-4-30 By:chingsky-liu
::bat����
:1
:a
echo ����s��ʼ��c�ر�
set /p var=������:
if %var%==s goto a1
if %var%==c goto a2
echo ���볬��Ԥ��ֵ,����������&pause&cls&goto a
:a1
for %%i in (%0) do set aa=%%~dpi 
cd /d %aa%
echo START����������ִ���밴Enter


@echo off
for /f "tokens=1* delims=:" %%a in ('findstr /n . list.txt') do (
   set .%%a=%%b&set /a n=%%a
)
:loop
   set /a w=%random%%%n+1
   if not defined .%w% goto loop
   call echo %%.%w%%%
   pause>nul



)
if "%num%"=="1" cls & goto 1 
goto loop

pause>nul
cls & goto input
:a2
pause

@echo off
set path=\borlandc\bin;%path%
cd \nivpsrc

:make
prj2mak noctis.prj
make -B -DALL=DEF_ALL -fnoctis.mak -a

if exist \bin\noctis.exe goto link
pause
goto make

:link
move /y \bin\noctis.exe \noctis\modules
copy /y supports.nct \noctis\data

cd /

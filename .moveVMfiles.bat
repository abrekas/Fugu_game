@echo off
setlocal enabledelayedexpansion

rem Укажите исходную и целевую папки (измените пути на свои)
set "source_folder=.\src_copy_car_obj"
set "dest_folder=.\vm"

rem Создать целевую папку, если её нет
if not exist "%dest_folder%" mkdir "%dest_folder%"

rem Переместить все файлы .vm
move /Y "%source_folder%\*.vm" "%dest_folder%"

rem Сообщение о завершении
echo Все файлы .vm перемещены в %dest_folder%
pause
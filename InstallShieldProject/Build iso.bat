ECHO OFF
REM This builds the project in its \Media directory then creates iso and md5 in the Latest Install directory
REM If you've modified scripts you must compile them before building the project
set project=Greentree Financial Software.ism
set ISPROJECTDIR=E:\InstallShieldProject
set media=GT3D-DVD
set MEDIADIR=%ISPROJECTDIR%\Media\%media%
set ISODIR=E:\Latest install DVD iso
set iso=Greentree installation CD.iso
del "%MEDIADIR%\Disk Images\Disk1\setup.exe"
ECHO 1. Building the %media% release for live project %ISPROJECTDIR%\%project%
"C:\Program Files (x86)\InstallShield\2018\System\ISBuild.exe" -p"%ISPROJECTDIR%\%project%" -m"%media%" -b"%MEDIADIR%"
ECHO 2. Building the iso file %ISODIR%\%iso%
E:\LoadNGo\bcd\bin\mkisofs -r -l -L -J -o "%ISODIR%\%iso%" "%MEDIADIR%\Disk Images\Disk1\"
ECHO 3. Building the md5 file
REM It seems md5sum can't handle a path containing spaces so we do this the clumsy way
E:
cd "%ISODIR%"
E:\LoadNGo\bcd\bin\md5sum.exe -b "%iso%" > "Greentree installation CD.md5"
dir
pause
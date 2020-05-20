"C:\Program Files (x86)\InstallShield\2018\System\ISBuild.exe" -p"E:\InstallShieldProject\Greentree Financial Software.ism" -m"GT3D-DVD" -b"e:\LoadNGo\Temp\Build"
xcopy "e:\LoadNGo\Temp\Build\Disk Images\Disk1" "e:\LoadNGo\GT3D-DVD\Installer" /y
e:\LoadNGo\bcd\bin\mkisofs -r -l -L -J -o "e:\Latest install DVD iso\Greentree installation CD.iso" "e:\LoadNGo\GT3D-DVD\"
e:
cd "e:\Latest install DVD iso"
e:\LoadNGo\bcd\bin\md5sum.exe -b "Greentree installation CD.iso" > "Greentree installation CD.md5"
pause
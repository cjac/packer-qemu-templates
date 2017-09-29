$cbi_msi="CloudbaseInitSetup_Stable_x64.msi"
#$cbi_msi="CloudbaseInitSetup_Stable_x86.msi"
& c:\ProgramData\chocolatey\bin\curl.exe -o "c:\packer\$cbi_msi" "http://moonunit.colliertech.org/~cjac/tmp/$cbi_msi"

#echo "installing cloudbase-init"
& msiexec /i C:\packer\$cbi_msi /qn /l*v c:\packer\cbi-log.txt

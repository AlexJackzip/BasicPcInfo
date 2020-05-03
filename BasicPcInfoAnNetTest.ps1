

#calls and stores info in var
$Diskp = Get-PhysicalDisk | out-string #showes physical drives in computer 
$MacAddress = Get-NetAdapter | out-string # gets mac address for all phisical interfaces on computer 
$computername = wmic computersystem get name
$serialnum = wmic bios get serialnumber # serial num givin by oem   
$domain = wmic computersystem get domain # get domain computer is assined to    
$ram = wmic COMPUTERSYSTEM get TotalPhysicalMemory # Ram ammount in bites


(Get-WMIObject win32_operatingsystem).name # gives computer name and location installed 
(Get-WmiObject Win32_OperatingSystem).OSArchitecture # gives architecture of win os
[environment]::OSVersion.Version #gives version num / bild num of win os
echo $computername
echo $MacAddress 
echo $domain
echo $serialnum
echo $Diskp
echo $ram

echo "Test internet and gpupdate ?" #
pause
ping 1.1.1.1 #test internet conection
gpupdate /force #updates group policy

pause


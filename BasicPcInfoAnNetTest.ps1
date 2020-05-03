

# calls and stores info in var
$Diskp = Get-PhysicalDisk | out-string # shows physical drives in computer
$MacAddress = Get-NetAdapter | out-string # gets mac address for all physical interfaces on computer 
$computername = wmic computersystem get name
$serialnum = wmic bios get serialnumber # serial num given by oem   
$domain = wmic computersystem get domain # get domain computer is assined to    
$ram = wmic COMPUTERSYSTEM get TotalPhysicalMemory # ram amount in bytes


(Get-WMIObject win32_operatingsystem).name # gives computer name and location installed 
(Get-WmiObject Win32_OperatingSystem).OSArchitecture # gives architecture of win os
[environment]::OSVersion.Version # gives version num / build num of win os
echo $computername # calls and desplayes command output
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


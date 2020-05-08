
# ///
# calls and stores info in var
# order of theas do not matter 
$computername = wmic computersystem get name # calls and desplayes command output
$OsName = (Get-WMIObject win32_operatingsystem).name | Out-String # gives computer name and location installed
$OsArc = (Get-WmiObject Win32_OperatingSystem).OSArchitecture | Out-String # gives architecture of win os
$OsVer = [environment]::OSVersion.Version | Out-String # gives version num / build num of win os
$Diskp = Get-PhysicalDisk | out-string # shows physical drives in computer
$MacAddress = Get-NetAdapter | out-string # gets mac address for all physical interfaces on computer 
$serialnum = wmic bios get serialnumber # serial num given by oem   
$domain = wmic computersystem get domain # get domain computer is assined to    
$ram = wmic COMPUTERSYSTEM get TotalPhysicalMemory # ram amount in bytes

# outputing to powershell window 
# order effect output 
$array1 = $computername + $serialnum + $domain + $OsName + $OsArc + $OsVer + $MacAddress + $Diskp + $ram
Write-Output $array1 #== Put a ( # ) in front of this to just output to file.===
# ///


$array1 | Out-File -FilePath .\BasicPCInfoOUT.txt #== Put a ( # ) in front of this to only output to screen. ===
Write-Output "   Output saved to file! txt file is whare you put the ps1 file."
#Note - send output to storege as well. give prompt to ware to save it

pause


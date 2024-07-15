param (
    [string]$type,
    [string]$field
)

if ($type -ieq "info" -or $type -eq "") {
    $obj = systeminfo.exe
} elseif ($type -ieq "operationalsystem" -or $type -ieq "so") {
    $obj = Get-WmiObject -ClassName Win32_OperatingSystem
} elseif ($type -ieq "processor" -or $type -ieq "cpu") {
    $obj = Get-WmiObject -Class Win32_Processor
    # Get-CimInstance -ClassName Win32_Processor
} elseif ($type -ieq "computername") {
    $obj = $env:computername
} elseif ($type -ieq "computer" -or $type -ieq "pc") {
    $obj = Get-WmiObject -ClassName Win32_ComputerSystem
} elseif ($type -ieq "computerinfo" -or $type -ieq "pcinfo") {
    $obj = Get-ComputerInfo
} elseif ($type -ieq "memory" -or $type -ieq "ram") {
    $obj = Get-WmiObject -ClassName Win32_PhysicalMemory
} elseif ($type -ieq "virtualmemory" -or $type -ieq "vram") {
    $obj = Get-WmiObject -ClassName Win32_PageFileUsage
} elseif ($type -ieq "harddisk" -or $type -ieq "hdd" -or $type -ieq "hd") {
    $obj = Get-WmiObject -ClassName Win32_DiskDrive
} elseif ($type -ieq "disk") {
    $obj = Get-Disk
} elseif ($type -ieq "volume" -or $type -ieq "vol") {
    $obj = Get-Volume
} elseif ($type -ieq "network" -or $type -ieq "net") {
    $obj = Get-NetAdapter
} elseif ($type -ieq "networks" -or $type -ieq "nets") {
    $obj = Get-WmiObject -Class Win32_NetworkAdapterConfigurationGet-NetAdapter
} elseif ($type -ieq "softwares" -or $type -ieq "sws") {
    $obj = Get-WmiObject -Class Win32_Product
} elseif ($type -ieq "resource") {
    $obj = Get-PnpDevice
} elseif ($type -ieq "desktop") {
    $obj = Get-WmiObject -ClassName Win32_Desktop
} elseif ($type -ieq "service") {
    $obj = Get-Service
} elseif ($type -ieq "hal") {
    $obj = cat -Path C:\windows\system32\hal.dll
} elseif ($type -ieq "power") {
    $obj = powercfg /batteryreport
} elseif ($type -ieq "print") {
    $obj = Get-WmiObject -Class Win32_Printer
} elseif ($type -ieq "bios") {
    $obj = Get-WmiObject -ClassName Win32_BIOS
} elseif ($type -ieq "user") {
    $obj = Get-WmiObject -Class Win32_UserAccount
} elseif ($type -ieq "ip") {
    $obj = Get-NetIPAddress
} elseif ($type -ieq "process") {
    $obj = Get-Process
} elseif ($type -ieq "driver") {
    $obj = Get-WmiObject -Class Win32_PnPSignedDriver
} elseif ($type -ieq "drivers") {
    $obj = driverquery
} elseif ($type -ieq "ports") {
    $obj = netstat 
} elseif ($type -ieq "portsconection") {
    $obj = get-nettcpconnection 
} else {
    Write-Output "Invalid option. Please provide a valid type."
}

if ($field -ne $null -and $field -ne "") {
    if ($field -eq "/?") {
        if ($type -ieq "event") {
            Get-EventLog -List
        } else {
            $obj | Get-Member
        }
    } else{
        $obj.$field
    }
} else {
    if ($type -eq "event") {
        Get-EventLog
    } else {
        $obj
    }
}
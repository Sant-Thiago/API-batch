param (
    [string]$type
)

if ($type -eq "system" -or $type -eq "sys") {
    systeminfo.exe
} elseif ($type -eq "operational system" -or $type -eq "so") {
    Get-CimInstance -ClassName Win32_OperatingSystem
} else {
    Write-Output "Invalid option. Please provide a valid type."
}
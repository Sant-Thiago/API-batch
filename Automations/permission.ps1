# $fstParam = $args[0]
param (
    [string]$command
)

if ($command -eq "-g") {
    Write-Output "Obtendo politicas de execução!"
    Get-ExecutionPolicy
} 
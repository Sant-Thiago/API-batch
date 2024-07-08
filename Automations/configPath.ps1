# Obtem o valor do PATH atual
$currentPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

# Obtem o caminho do diretório como um objeto
$location = Get-Location

# Obtem somente o path do location
$newPath = $location.Path + "\cmd"

# Verifica se o diretório já está no PATH
if ($currentPath -notlike "*$newPath") {

    $updatedPath = "$currentPath;$newPath"

    [System.Environment]::SetEnvironmentVariable("Path", $updatedPath, [System.EnvironmentVariableTarget]::Machine)
    Write-Output "PATH atualizado com sucesso."
} else {
    Write-Output "O diretório já está no PATH."
}
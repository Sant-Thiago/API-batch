# Comando a ser executado no novo PowerShell
$commandToExecute = "./configPath.ps1"

# Inicia o PowerShell como administrador no mesmo diretório e executa o comando
Start-Process -FilePath "powershell.exe" -ArgumentList "-NoExit", "-Command", "Set-Location '$currentDirectory'; $commandToExecute" -Verb RunAs

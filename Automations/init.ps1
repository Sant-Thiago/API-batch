# Obtém o diretório atual
$currentDirectory = Get-Location

# Definição dos arquivos a serem executados
$batchFile = ".\cmd\configPath.bat"
$powershellFile = ".\configPath.ps1"

# Lista de arquivos a serem executados
$filesList = @($batchFile, $powershellFile)

# Mensagens de sucesso e erro
$successMessage = "A Path em variaveis de ambiente foi configurada com sucesso!"
$errorMessage = "Nao foi possivel configurar a Path em variaveis de ambiente."

# Itera sobre a lista de arquivos e executa cada um como administrador
foreach ($file in $filesList) {
    # Verifica se o arquivo existe
    if (Test-Path $file) {
        # Executa o arquivo dependendo da extensão
        if ($file -like "*.bat") {
            $process = Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$file`"" -Verb RunAs -PassThru
        } elseif ($file -like "*.ps1") {
            $process = Start-Process -FilePath "powershell.exe" -ArgumentList "-Command", "Set-Location '$currentDirectory'; $file" -Verb RunAs -PassThru
        } else {
            Write-Output "Tipo de arquivo não suportado: $file"
            continue
        }

        # Aguarda a conclusão do processo
        $process.WaitForExit()

        # Verifica o código de saída do processo
        if ($process.ExitCode -eq 0) {
            Write-Output $successMessage
            # Interrompe a execução do script
            break
        } else {
            Write-Output $errorMessage
        }
    } else {
        Write-Output "Arquivo não encontrado: $file"
    }
}

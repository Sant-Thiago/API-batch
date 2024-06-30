# Nome do arquivo a ser procurado
$fileName = "configPath.ps1"

# Diretório específico onde a busca será feita
$searchDirectory = "C:\"

# Encontra o caminho do arquivo
$filePath = Get-ChildItem -Path $searchDirectory -Recurse -Filter $fileName -ErrorAction SilentlyContinue | Select-Object -First 1 -ExpandProperty FullName

# Verifica se o arquivo foi encontrado
if ($filePath) {
    Write-Output "O caminho do arquivo é: $filePath"
} else {
    Write-Output "Arquivo não encontrado"
}

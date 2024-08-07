# Função para tocar uma música específica no Spotify usando um link
function Play-SpotifyTrack {
    param (
        [Parameter(Mandatory = $true)]
        [string]$trackUri
    )

    # O comando start-process abre o URI do Spotify que deve ser interpretado pelo app do Spotify
    Start-Process $trackUri
}

# Exemplo de uso com um URI do Spotify
$trackUri = "spotify:track:0aXHnXG1twZEc7AUGTK4Fo" # Substitua pelo URI da faixa que deseja tocar
Play-SpotifyTrack -trackUri $trackUri


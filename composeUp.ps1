# Diretório onde estão os arquivos YAML
$composeDir = "."

# Nome do arquivo principal
$mainFile = "docker-compose.yml"


# Encontra todos os arquivos .yml no diretório, excluindo o principal
$additionalFiles = Get-ChildItem -Path $composeDir -Filter *.yml | Where-Object { $_.Name -ne $mainFile } | ForEach-Object { "-f `"$($_.Name)`"" }

# Combina o arquivo principal com os adicionais
$composeArgs = @("-f `"$mainFile`"") + $additionalFiles
$composeArgsString = $composeArgs -join " "

# Executa o comando docker-compose com os arquivos encontrados
$command = "docker-compose $composeArgsString up -d"
Write-Host "Executing: $command"
Invoke-Expression $command

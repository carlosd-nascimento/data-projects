# pegar o diretório atual
$scriptDirectory = Split-Path $MyInvocation.MyCommand.Path -Parent

# definir o arquivo de saída
$OutputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# verificar se o arquivo já existe, se sim, deletar
if (Test-Path -Path $OutputFile) {
    Remove-Item -Path $OutputFile
}

# pegar conteúdo de todos os arquivos .sql do diretório
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Sort-Object Name

# concatenar o conteúdo de todos os arquivos e salvar no arquivo de output
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $OutputFile
    "Go" | Out-File -Append -FilePath $OutputFile
}

Write-Host "Todos os arquivos foram combinados em: $OutputFile"
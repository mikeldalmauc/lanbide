# Define la carpeta principal y el nombre del archivo final
$rootFolder = "."
$outputFile = ".\concatenated.md"

# Elimina el archivo final si ya existe para evitar duplicados
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Busca todos los archivos Markdown en la carpeta y sus subcarpetas
$markdownFiles = Get-ChildItem -Path $rootFolder -Recurse -Filter "*.md"

$fileCount = 0
# Procesa cada archivo Markdown
foreach ($file in $markdownFiles) {
    $fileCount += 1 
    # Agrega un encabezado indicando el archivo que se está concatenando
    Add-Content -Path $outputFile -Value "`n### Contenido de: $($file.FullName)`n"
    
    # Agrega el contenido del archivo actual al archivo final
    Get-Content -Path $file.FullName | Add-Content -Path $outputFile
}

Write-Host "Todos los archivos Markdown han sido concatenados en $outputFile"
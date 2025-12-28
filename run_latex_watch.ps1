Param(
  [string]$file = "MAGANG.tex"
)
Write-Host "Starting latexmk watch for $file"
latexmk -pdf -pvc -interaction=nonstopmode $file

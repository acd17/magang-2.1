# PowerShell script untuk compile LaTeX dan bibliografi

# Nama file utama tanpa ekstensi
$File = "MAGANG"

# Compile pertama kali untuk buat auxiliary files (.aux, .toc, dll)
& pdflatex -interaction=nonstopmode "${File}.tex"

# Jalankan bibtex untuk proses referensi
& bibtex "${File}"

# Jalankan pdflatex dua kali untuk update semua referensi dan daftar isi
& pdflatex -interaction=nonstopmode "${File}.tex"
& pdflatex -interaction=nonstopmode "${File}.tex"

Write-Host "✅ Build selesai! Hasil ada di ${File}.pdf"
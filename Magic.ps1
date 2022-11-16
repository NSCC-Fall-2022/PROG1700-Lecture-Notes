$word = "elite"
$alphabet = 'a'..'z'

for ($i=0; $i -lt $word.Length; $i++) {
    if ($alphabet[$i] % 2 -eq 1) {
        Write-Host ([string]$word[$i]).ToUpper() -NoNewline
    } else {
        Write-Host $word[$i] -NoNewline
    }
}
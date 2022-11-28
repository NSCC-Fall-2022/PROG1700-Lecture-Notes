
function Initialize-CrappyDB {
    if (-not (Test-Path 'data')) {
        New-Item -Path 'data' -ItemType Directory > $null
    }
    Set-Location 'data'
}

Export-ModuleMember -Function Initialize-CrappyDB
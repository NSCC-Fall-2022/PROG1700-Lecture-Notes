
function Initialize-CrappyDB {
    if (-not (Test-Path 'data')) {
        New-Item -Path 'data' -ItemType Directory > $null
    }
    Set-Location 'data'
    New-Item 'crappydb.txt'
}

function Add-Data {
    $records = @(
        @("w111111","john","smith"),
        @("w222222","jane","doe"),
        @("w333333","jack","sprat")
    )

    Set-Content -Path "crappydb.txt" -Value "" -NoNewline
    foreach ($record in $records) {
        Add-Content -Path "crappydb.txt" -Value ($record -join ',')
    }
}

function Select-Data {
    $data = Get-Content -Path "crappydb.txt"
    foreach ($line in $data) {
        if ($line -like "*jack*") {
            Write-Host $line
        }
    }
}

Export-ModuleMember -Function Initialize-CrappyDB, Add-Data, Select-Data
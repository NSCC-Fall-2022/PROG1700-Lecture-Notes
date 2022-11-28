# accept two command line parameters
# "Name" of the emoji
# "Repeat" number of times to repeat the character

param (
    [Parameter(Mandatory)]
    [string]$Name,
    [Parameter(Mandatory)]
    [int]$Repeat
)

$emojis = @{
    'smiley' = "`u{1F600}"
    'santa' = "`u{1F385}"
    'alien' = "`u{1F47E}"
    'tree' = "`u{1F384}"
    'sundae' = "`u{1F4A9}"
}

if ($Repeat -eq 0) {
    $Repeat = 1
}

Write-Host (($emojis[$Name]) * $Repeat)
# High Low Game
$WonGame = $false

# The computer will start by generating a random number between 1 - 10
function New-Answer {
    Return Get-Random -Minimum 1 -Maximum 10
}

# The user will now have a chance to guess the number
function Get-UserGuess {
    Read-Host "Guess a number"
}

# If incorrect, 
# the computer will state whether the guess was too high or too low
function Test-Guess ($Guess, $Answer) {
    if ($Guess -gt $Answer) {
        Write-Host "Too High"
    } elseif ($Guess -lt $Answer) {
        Write-Host "Too Low"
    } else {
        Write-Host "YOU GUESSED IT!"
        $script:WonGame = $true
    }
}

function End-Play ($Answer) {
    # The user then gets another chance to guess
    if (-not $WonGame) {
        $Guess = Get-UserGuess
        Test-Guess $Guess $Answer
    }

    # If incorrect a second time, they lose the game
    if (-not $WonGame) {
        Write-Host "Sorry, you didn't guess the number."
    }
}

# entire game starts here

# TODO: comment this out before actually using
$DebugPreference = "Continue"

function Start-Game {
    $Answer = New-Answer
    Write-Debug $Answer
    $Guess = Get-UserGuess
    Test-Guess $Guess $Answer
    End-Play $Answer
}

Start-Game
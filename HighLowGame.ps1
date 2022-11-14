# High Low Game

# The computer will start by generating a random number between 1 - 10
function New-Answer {
    $script:Answer = Get-Random -Minimum 1 -Maximum 10
}

# The user will now have a chance to guess the number
function Get-UserGuess {
    $script:Guess = Read-Host "Guess a number"
}

# If incorrect, 
# the computer will state whether the guess was too high or too low
function Test-Guess {
    if ($Guess -gt $Answer) {
        Write-Host "Too High"
    } elseif ($Guess -lt $Answer) {
        Write-Host "Too Low"
    } else {
        Write-Host "YOU GUESSED IT!"
    }
}

# The user then gets another chance to guess

# If incorrect a second time, they lose the game


# entire game starts here

# TODO: comment this out before actually using
$DebugPreference = "Continue"

function Run-Game {
    New-Answer
    Write-Debug $Answer
    Get-UserGuess
    Test-Guess
}

Run-Game
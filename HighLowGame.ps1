# High Low Game

# The computer will start by generating a random number between 1 - 10
function New-Answer ($Level) {
    Return Get-Random -Minimum 1 -Maximum ([Math]::Pow(10, $Level))
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
        Return $false
    } elseif ($Guess -lt $Answer) {
        Write-Host "Too Low"
        Return $false
    } 
    Return $true
}

function End-Play ($WonGame) {
 
    # If incorrect a second time, they lose the game
    if ($WonGame) {
        Write-Host "YEAH! YOU WIN!"
    } else {
        Write-Host "Sorry, you didn't guess the number."
    }
}

# entire game starts here

# TODO: comment this out before actually using
$DebugPreference = "Continue"

function Start-Game {

    $Level = 1

    do {
        # generate random number
        $Answer = New-Answer
        Write-Debug $Answer

        # allow the user to guess
        $WonGame = $false
        for ($i = 0; $i -lt 2 -and -not $WonGame; $i++) {
            $Guess = Get-UserGuess
            $WonGame = Test-Guess $Guess $Answer
        }

        # display win or lose
        End-Play $WonGame

        # increase difficulty
        $Level++

    } while ($WonGame)
}

Start-Game
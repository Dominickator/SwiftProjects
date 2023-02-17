// Generate a random number between 1 and 100
let randomNumber = Int.random(in: 1...100)

// Initialize the number of guesses to zero
var numGuesses = 0

// Secret Mini-Game
var miniGameBool: Bool

// Loop to allow the player to guess up to 10 times
while numGuesses < 10 {
    print("Guess a number between 1 and 100:")
    // Get the player's guess
    let guess = Int(readLine()!) ?? 0

    // Check if the guess is correct
    if guess == randomNumber {
        print("Congratulations, you guessed the number in \(numGuesses + 1) tries!")
        miniGameBool = true
        break
    } else if guess < randomNumber {
        print("Too low! Guess again.")
    } else {
        print("Too high! Guess again.")
    }

    // Increment the number of guesses
    numGuesses += 1
}

// If the player did not guess the number within 10 tries, reveal the answer
if numGuesses == 10 {
    print("Sorry, you did not guess the number in time. The number was \(randomNumber).")
}

if(miniGameBool == true){
    print("Hey, so I heard that you guessed the number, want to play a minigame? (y/n)")
    let ans = readLine()
    if(ans == "n"){
        print("Okay, see you again soon!")
    }
    if(ans == "y"){
        print("Alrighty, here we go!")
        print("This is a cops and robbers sorta game, you are a robber, there are four cops chasing you, in order to win you need to collect 5 Jewels, if the cops catch you though, you lose!")
        print("Get ready, here we go!")
        //Game code here!
    }
}

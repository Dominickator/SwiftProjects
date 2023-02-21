// Generate a random number between 1 and 100
let randomNumber = Int.random(in: 1...100)

// Initialize the number of guesses to zero
var numGuesses = 0

// Secret Mini-Game
var miniGameBool: Bool = false

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
        print("Alrighty! This is a simple game of rock, paper, scissors! If you don't know how to play, press CTRL+C, cause you don't deserve to play!")
        var gameFlag: Bool = true
        while(gameFlag == true){
            let rockPaperScissorsNum: Int = Int.random(in: 1...3)
            print("Ok player! The computer has it's move, time to make your move, please input a number corresponding to the following chart.")
            print("1. Rock\n2. Paper\n3. Scissors")
            let playerNum = Int(readLine()!) ?? 1
            if(rockPaperScissorsNum == 1){
                if(playerNum == 1){
                    print("Tie! Nobody wins! At least you didn't lose...")
                }
                else if(playerNum == 2){
                    print("Congratulations, paper beats rock, you win!")
                }
                else if(playerNum == 3){
                    print("Oh no! You lost, scissors loses to rock!")
                }
            }
            else if(rockPaperScissorsNum == 2){
                if(playerNum == 1){
                    print("Oh no! You lost, rock loses to paper!")
                }
                else if(playerNum == 2){
                    print("Tie! Nobody wins! At least you didn't lose...")
                }
                else if(playerNum == 3){
                    print("Congratulations, scissors beats paper, you win!")
                }
            }
            else if(rockPaperScissorsNum == 3){
                if(playerNum == 1){
                    print("Congratulations, rock beats scissors, you win!")
                }
                else if(playerNum == 2){
                    print("Oh no! You lost, paper loses to scissors!")
                }
                else if(playerNum == 3){
                    print("Tie! Nobody wins! At least you didn't lose...")
                }
            }
            print("Well player, hopefully you are happy with your result, do you want to play again? (y/n)")
            let playerDec: String? = readLine()
            if(playerDec == "y"){
                print("Okay, here we go!")
            }
            else{
                print("Okay player, see you around!")
                gameFlag = false
            }
        }
    }
}

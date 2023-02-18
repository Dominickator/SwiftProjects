class Player{
    var health: Int = 100
    var jewelsCollected: Int = 0
    var caught: Bool = false
    var locationx: Int = 0
    var locationy: Int = 0
}

class Cop{
    var locationx: Int = 0
    var locationy: Int = 0
}

class Jewel{
    var locationx: Int = 0
    var locationy: Int = 0
    var collected: Bool = false
}

// Assuming map is a 10x10 array of characters
func prettyPrint(map: [[Character]]) {
    // Print the top border
    print("+----------+")
    // Loop through each row of the map
    for row in map {
        // Print a vertical line before each row
        print("|", terminator: "")
        // Loop through each character in the row
        for char in row {
            // Print the character without a newline
            print(char, terminator: "")
        }
        // Print a vertical line and a newline after each row
        print("|")
    }
    // Print the bottom border
    print("+----------+")
}



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
        print("Alrighty, here we go!")
        print("This is a cops and robbers sorta game, you are a robber, there are four cops chasing you, in order to win you need to collect 5 Jewels, if the cops catch you though, you lose!")
        print("Get ready, here we go!")
        //Game code here!
        var map: [[Character]] = Array(repeating: Array(repeating: " ", count: 10), count: 10)
        let cop1 = Cop()
        let cop2 = Cop()
        let cop3 = Cop()
        let cop4 = Cop()
        let player = Player()
        let j1: Jewel = Jewel()
        let j2: Jewel = Jewel()
        let j3: Jewel = Jewel()
        let j4: Jewel = Jewel()
        let j5: Jewel = Jewel()
        cop1.locationx = Int.random(in: 0...9)
        cop1.locationy = Int.random(in: 0...9)
        cop2.locationx = Int.random(in: 0...9)
        cop2.locationy = Int.random(in: 0...9)
        cop3.locationx = Int.random(in: 0...9)
        cop3.locationy = Int.random(in: 0...9)
        cop4.locationx = Int.random(in: 0...9)
        cop4.locationy = Int.random(in: 0...9)
        player.locationx = Int.random(in: 0...9)
        player.locationy = Int.random(in: 0...9)
        j1.locationx = Int.random(in: 0...9)
        j1.locationy = Int.random(in: 0...9)
        j2.locationx = Int.random(in: 0...9)
        j2.locationy = Int.random(in: 0...9)
        j3.locationx = Int.random(in: 0...9)
        j3.locationy = Int.random(in: 0...9)
        j4.locationx = Int.random(in: 0...9)
        j4.locationy = Int.random(in: 0...9)
        j5.locationx = Int.random(in: 0...9)
        j5.locationy = Int.random(in: 0...9)
        while(player.locationx == cop1.locationx || player.locationx == cop2.locationx || player.locationx == cop3.locationx || player.locationx == cop4.locationx){
            player.locationx = Int.random(in: 0...9)
        }
        while(player.locationy == cop1.locationy || player.locationy == cop2.locationy || player.locationy == cop3.locationy || player.locationy == cop4.locationy){
            player.locationy = Int.random(in: 0...9)
        }
        let gameFlag: Bool = true
        while(gameFlag == true){
            map[cop1.locationx][cop1.locationy] = "C"
            map[cop2.locationx][cop2.locationy] = "C"
            map[cop3.locationx][cop3.locationy] = "C"
            map[cop4.locationx][cop4.locationy] = "C"
            map[player.locationx][player.locationy] = "P"
            map[j1.locationx][j1.locationy] = "J"
            map[j2.locationx][j2.locationy] = "J"
            map[j3.locationx][j3.locationy] = "J"
            map[j4.locationx][j4.locationy] = "J"
            map[j5.locationx][j5.locationy] = "J"
            if(j1.collected == true){
                map[j1.locationx][j1.locationy] = " "
            }
            if(j2.collected == true){
                map[j2.locationx][j2.locationy] = " "
            }
            if(j3.collected == true){
                map[j3.locationx][j3.locationy] = " "
            }
            if(j4.collected == true){
                map[j4.locationx][j4.locationy] = " "
            }
            if(j5.collected == true){
                map[j5.locationx][j5.locationy] = " "
            }
            printMap(map: map)
            if()
        }
        
    }
}

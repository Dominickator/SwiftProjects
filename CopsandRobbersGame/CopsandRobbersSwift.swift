//PrettyPrint the map array
func printMap(_ array: [[Character]]) {
    let rowDivider = "+---" + String(repeating: "+---", count: array[0].count - 1) + "+"
    print(rowDivider)
    
    for row in array {
        for col in row {
            print("| \(col) ", terminator: "")
        }
        print("|")
        print(rowDivider)
    }
}
//Cop class
class cop{
    var xcoord = 0
    var ycoord = 0
    init(xcoord: Int, ycoord: Int){
        self.xcoord = xcoord
        self.ycoord = ycoord
    }
    func populateMap(arr: inout [[Character]]){
        arr[xcoord][ycoord] = "C"
    }
    func move(gameMap: inout [[Character]]){
        let copMove = Int.random(in: 1...4)
        switch(copMove){
        case 1:
            if(ycoord + 1 <= 9){
                gameMap[xcoord][ycoord] = " "
                ycoord+=1
            }
        case 2:
            if(xcoord - 1 >= 0){
                gameMap[xcoord][ycoord] = " "
                xcoord-=1
            }
        case 3:
            if(ycoord - 1 >= 0){
                gameMap[xcoord][ycoord] = " "
                ycoord-=1
            }
        case 4:
            if(xcoord + 1 <= 9){
                gameMap[xcoord][ycoord] = " "
                xcoord+=1
            }
        default:
            print()
        }
    }
}
//Robber class
class robber{
    var xcoord = 0
    var ycoord = 0
    var numJewels = 0
    init(xcoord: Int, ycoord: Int){
        self.xcoord = xcoord
        self.ycoord = ycoord
    }
    func populateMap(arr: inout [[Character]]){
        arr[xcoord][ycoord] = "R"
    }
}
//Jewel class
class jewel{
    var xcoord = 0
    var ycoord = 0
    init(xcoord: Int, ycoord: Int){
        self.xcoord = xcoord
        self.ycoord = ycoord
    }
    func populateMap(arr: inout [[Character]]){
        arr[xcoord][ycoord] = "J"
    }
}


//Initialize Variables for Map Size
var x: Int = 10
var y: Int = 10
var gameMap: [[Character]] = [[Character]](repeating: [Character](repeating: " ", count: x), count: y)
print("This is a cops and robbers game, move by W,A,S,D. Do not press any other keys, you have been warned...")
print("The cops move randomly at the end of each turn so they could jump onto you, stay away at all costs!")
print("MAP KEY:\n   R means robber, that's you\n   C means cops, stay away from them\n   J means jewel, you want to collect it before the cops get you!\n   X is where the cop caught you, if you were caught\n   W is where you collected the jewel, if you win!")
//Declaring all cops, players, and jewels
var cop1: cop = cop(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
var cop2: cop = cop(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
var cop3: cop = cop(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
var cop4: cop = cop(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
var player: robber = robber(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
if((player.xcoord == cop1.xcoord && player.ycoord == cop1.ycoord) || (player.xcoord == cop2.xcoord && player.ycoord == cop2.ycoord) || (player.xcoord == cop3.xcoord && player.ycoord == cop3.ycoord) || (player.xcoord == cop4.xcoord && player.ycoord == cop4.ycoord)){
    player.xcoord = Int.random(in: 1..<10)
    player.ycoord = Int.random(in: 1..<10)
}
var j: jewel = jewel(xcoord: Int.random(in: 1..<10), ycoord: Int.random(in: 1..<10))
if((j.xcoord == cop1.xcoord && j.ycoord == cop1.ycoord) || (j.xcoord == cop2.xcoord && j.ycoord == cop2.ycoord) || (j.xcoord == cop3.xcoord && j.ycoord == cop3.ycoord) || (j.xcoord == cop4.xcoord && j.ycoord == cop4.ycoord) || (j.xcoord == player.xcoord && j.ycoord == player.ycoord)){
    j.xcoord = Int.random(in: 1..<10)
    j.ycoord = Int.random(in: 1..<10)
}
var moveCounter = 0
var gameLoop: Bool = true
while(gameLoop){
    cop1.populateMap(arr: &gameMap)
    cop2.populateMap(arr: &gameMap)
    cop3.populateMap(arr: &gameMap)
    cop4.populateMap(arr: &gameMap)
    player.populateMap(arr: &gameMap)
    j.populateMap(arr: &gameMap)
    printMap(gameMap)
    print("Player, please select W, A, S, D to move")
    let playerIn = readLine()

    switch(playerIn){
        case "D":
            print("Moving right!")
            if(player.ycoord + 1 <= 9){
                gameMap[player.xcoord][player.ycoord] = " "
                player.ycoord+=1
            }
            else{
                print("Sorry, you can't do that, you lose your turn!")
            }
        case "W":
            print("Moving up!")
            if(player.xcoord - 1 >= 0){
                gameMap[player.xcoord][player.ycoord] = " "
                player.xcoord-=1
            }
            else{
                print("Sorry, can't do that, you lose your turn!")
            }
        case "A":
            print("Moving left!")
            if(player.ycoord - 1 >= 0){
                gameMap[player.xcoord][player.ycoord] = " "
                player.ycoord-=1
            }
            else{
                print("Sorry, you can't do that, you lose your turn!")
            }
        case "S":
            print("Moving down!")
            if(player.xcoord + 1 <= 9){
                gameMap[player.xcoord][player.ycoord] = " "
                player.xcoord+=1
            }
            else{
                print("Sorry, you can't do that, you lose your turn!")
            }
        default:
            print("Goodbye turn!")

    }
    moveCounter += 1
    cop1.move(gameMap: &gameMap)
    cop2.move(gameMap: &gameMap)
    cop3.move(gameMap: &gameMap)
    cop4.move(gameMap: &gameMap)
    if((player.xcoord == cop1.xcoord && player.ycoord == cop1.ycoord) || (player.xcoord == cop2.xcoord && player.ycoord == cop2.ycoord) || (player.xcoord == cop3.xcoord && player.ycoord == cop3.ycoord) || (player.xcoord == cop4.xcoord && player.ycoord == cop4.ycoord)){
        print("Player, you have been caught! At least it took you \(moveCounter) whole move(s) to get caught!")
        gameMap[player.xcoord][player.ycoord] = "X"
        gameLoop = false
        printMap(gameMap)
    }
    else if(player.xcoord == j.xcoord && player.ycoord == j.ycoord){
        print("Player, you have gotten the jewel without being caught! Congratulations, you win! It took you \(moveCounter) turns to win!")
        gameMap[player.xcoord][player.ycoord] = "W"
        gameLoop = false
        printMap(gameMap)
    }
}

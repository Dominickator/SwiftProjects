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


//Initialize Variables for Map Size
var x: Int = 10
var y: Int = 10
var gameMap: [[Character]] = [[Character]](repeating: [Character](repeating: " ", count: x), count: y)
printMap(gameMap)
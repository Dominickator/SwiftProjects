// This is a simple program that asks the user for their name and if they are ready to go
// To print a message to the console, use the print() function
print("Hey world, how's it going?")
print("Can I get your name?")
// To get the user input, use the readLine() function, which returns a string or nil
// To handle the case when the input is nil, use the nil coalescing operator (??), which returns the left operand if it is not nil, or the right operand if it is nil
// To declare a constant, use the let keyword
let name = (readLine() ?? "Anony Mouse")
// To print a message with a variable or a constant, use string interpolation, which inserts the value of the expression inside the parentheses into the string
print("Great, \(name), are you ready to go? (y/N)")
// To get the user input again, use the readLine() function
let decision = readLine() ?? "n"
// To check the user input, use an if, then statement, which executes a block of code if a condition is true, and optionally another block of code if the condition is false
// To compare two strings, use the equal to operator (==), which returns true if the strings are equal, or false otherwise
if decision == "y"{
    // code to execute if the user input is "y"
    print("Great let's go!")
}
else if decision == "n"{
    // code to execute if the user input is "n"
    print("Oh well then, hopefully I get to see you some other time. Program exiting now...")
}

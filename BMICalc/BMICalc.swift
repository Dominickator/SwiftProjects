import Foundation
print("Hello, I will ask for your height and weight, and spit out your BMI (Body Mass Index)")
print("Please enter your weight in pounds: ")
let weight: Float = Float(readLine()!) ?? 0
print("Please enter your height (feet): ")
let heightFeet: Float = Float(readLine()!) ?? 0
print("Please enter your height (inches): ")
let heightIn: Float = Float(readLine()!) ?? 0
let height: Float = (heightFeet * 12) + heightIn
let BMI: Float = (weight / (height * height)) * 703.0
let roundedValue = round(BMI * 100) / 100.0
print("Your BMI is: \(roundedValue)")
if(BMI < 18.5){
    print("This means that you are considered underweight.")
}
else if(BMI >= 18.5 && BMI <= 24.9){
    print("This means that you are considered a healthy weight.")
}
else if(BMI >= 25.0 && BMI <= 29.9){
    print("This means that you are considered overweight.")
}
else if(BMI >= 30.0){
    print("This means that you are considered obese.")
}
import UIKit

//1. while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var number = 1
var result = 1

while number <= 20 {
    result *= number
    number += 2
}

print("ყველა კენტი რიცხვის ნამრავლია: \(result)")


//2.შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”

let originalString = "Test"
var reversedString = ""

for character in originalString.reversed() {
    reversedString.append(character)
}

print(reversedString)

//3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."


//var lightIndex = 0
//
//while true {
//    switch lightIndex {
//    case 0:
//        print("🔴->", terminator: "")
//        lightIndex = 1
//    case 1:
//        print("🟡->", terminator: "")
//        lightIndex = 2
//    case 2:
//        print("🟢->", terminator: "")
//        lightIndex = 0
//    default:
//        break
//    }
//}


//4.Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”


var numberOfTickets = 6

while numberOfTickets > 0 {
    
    numberOfTickets -= 1
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(numberOfTickets)")
}

print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")

//5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

let array = [1, 22, 8, 4, 55, 6, 6]

let set = Set(array)

if set.count == array.count {
    print("array-ში ყველა ელემენტი განსხვავებულია")
} else {
    print("array შეიცავს მსგავს ელემენტებს")
}


//6.დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას

let differenceClosure: (Int, Int) -> Int = { (a, b) in
    return a - b
}

let myResult = differenceClosure(10, 5)
print(myResult)

//7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.
//
//func countConsonants(in string: String) {
//    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//    var consonantCount = 0
//
//    for char in string.lowercased() {
//        if !vowels.contains(char) && char != " " {
//            consonantCount += 1
//        }
//    }
//
//    print("თანხმოვნების რაოდენობა: \(consonantCount)")
//}
//
//
//let inputString = "Popcorn"
//countConsonants(in: inputString)

func countConsonants(in string: String) {
    
    let consonants: Set<Character> = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

    var consonantCount = 0

    for character in string.lowercased() {
        if consonants.contains(character) {
            consonantCount += 1
        }
    }
    
    print("თანხმოვნების რაოდენობა: \(consonantCount)")
}

let testString = "Write thefunction"
countConsonants(in: testString)


//8.შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.

var firstArray = [8, 4, 9, 9, 0, 2]

let secondArray = [1, 0, 9, 2, 3, 7, 0, 1]

var sortedArray = firstArray + secondArray

for i in 0..<sortedArray.count {
    let currentValue = sortedArray[i]
    var value = i - 1
    while value >= 0 && sortedArray[value] > currentValue {
        sortedArray[value + 1] = sortedArray[value]
        value -= 1
    }
    sortedArray[value + 1] = currentValue
}
print(sortedArray)


//9.დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ

func factorial(int: Int)  -> Int {
    var initialValue = 1
    
    for i in 1...int {
        initialValue *= i
    }
    
    return initialValue

}

print(factorial(int: 4))


//10.შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.

let arrayOfInts = Array(0...10)
print(arrayOfInts)

var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for i in arrayOfInts {
    if i % 2 == 1 {
        evenNumbers.append(i)
    } else {
        oddNumbers.append(i)
    }
}

print(oddNumbers)
print(evenNumbers)










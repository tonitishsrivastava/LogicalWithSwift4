//: Playground - noun: a place where people can play

import UIKit


//Given 2 int values, return whichever value is nearest to the value 10, or return 0 in the event of a tie. Note that Math.abs(n) returns the absolute value of a number.
//
//
//close10(8, 13) → 8
//close10(13, 8) → 8
//close10(13, 7) → 0


func close10(num1 : Int, num2 : Int) -> Int{
    let num1DiffTo10 = abs(num1-10)
    let num2DiffTo10 = abs(num2-10)
    if num1DiffTo10<num2DiffTo10 {
        return num1
    }else if num1DiffTo10>num2DiffTo10{
        return num2
    }
    return 0
}

print(close10(num1: 11, num2: 8))

//Given three int values, a b c, return the largest.
//
//
//intMax(1, 2, 3) → 3
//intMax(1, 3, 2) → 3
//intMax(3, 2, 1) → 3


func intMax(num1: Int, num2: Int, num3: Int) -> Int{
    if ((num1>num2)&&(num1>num3)) {
        return num1
    }else if ((num2>num1)&&(num2>num3)){
        return num2
    }
    return num3
}

print(intMax(num1: 12, num2: 62, num3: 32))

//Given a string, return a string made of the first 2 chars (if present), however include first char only if it is 'o' and include the second only if it is 'z', so "ozymandias" yields "oz".
//
//
//startOz("ozymandias") → "oz"
//startOz("bzoo") → "z"
//startOz("oxx") → "o"


func startOz(word: String) -> String{
    var newWord = ""
    if word.first == "o"{
        newWord = newWord + "o"
    }
    
    if word.dropFirst().first=="z"{
        newWord = newWord+"z"
    }
    return newWord
}

print(startOz(word: "ozx edhbw"))

//Return true if the given string begins with "mix", except the 'm' can be anything, so "pix", "9ix" .. all count.
//
//
//mixStart("mix snacks") → true
//mixStart("pix snacks") → true
//mixStart("piz snacks") → false


func mixStart(word: String ) -> Bool{
    let newWord = word.dropFirst()
    if newWord.hasPrefix("ix") {
        return true
    }
    return false
}

print(mixStart(word: "pix edhbw"))

//Given a string, if the string "del" appears starting at index 1, return a string where that "del" has been deleted. Otherwise, return the string unchanged.
//
//
//delDel("adelbc") → "abc"
//delDel("adelHello") → "aHello"
//delDel("adedbc") → "adedbc"


func delDel(word: String) -> String{
    if word.contains("del") {
        let newWord = word
        let str = newWord.replacingOccurrences(of: "del", with: "")
        return str
    }else{
        return word
    }
    
}

print(delDel(word: "pix edhbw"))

//Given 2 int values, return true if they are both in the range 30..40 inclusive, or they are both in the range 40..50 inclusive.
//
//
//in3050(30, 31) → true
//in3050(30, 41) → false
//in3050(40, 50) → true


func in3050(num1: Int, num2: Int) -> Bool{
    if ((num1>=30&&num1<=40)&&(num2>=30&&num2<=40)) {
        return true
    } else if ((num1>=40&&num1<=50)&&(num2>=40&&num2<=50)) {
        return true
    }
    return false
}

print(in3050(num1: 50, num2: 31))

//Given 2 positive int values, return the larger value that is in the range 10..20 inclusive, or return 0 if neither is in that range.
//
//
//max1020(11, 19) → 19
//max1020(19, 11) → 19
//max1020(11, 9) → 11


func max1020(num1: Int, num2: Int) -> Int{
    if ((num1>=10&&num1<=20)&&(num2>=10&&num2<=20)) {
        if num1>num2 {
            return num1
        }
        return num2
    }else{
        if (num1>=10&&num1<=20) {
            return num1
        }else if (num2>=10&&num2<=20){
            return num2
        }else{
            return 0
        }
    }
}

print(max1020(num1: 19, num2: 15))

//Return true if the given string contains between 1 and 3 'e' chars.
//
//stringE("Hello") → true
//stringE("Heelle") → true
//stringE("Heelele") → false

func stringE(word: String) -> Bool{
    var count = 0
    for char in word {
        if char == "e" {
            count = count + 1
        }
    }
    
    if count>=1&&count<=3 {
        return true
    }
    return false
}

print(stringE(word: "pixeeedhbw"))

//Given two non-negative int values, return true if they have the same last digit, such as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is 7.
//
//
//lastDigit(7, 17) → true
//lastDigit(6, 17) → false
//lastDigit(3, 113) → true


func lastDigit(num1: Int, num2:Int) -> Bool{
    let num1LastDigit = num1%10
    let num2LastDigit = num2%10
    
    if num1LastDigit==num2LastDigit {
        return true
    }
    return false
}

print(lastDigit(num1: 19, num2: 99))

//Given a string, return a new string where the last 3 chars are now in upper case. If the string has less than 3 chars, uppercase whatever is there. Note that str.toUpperCase() returns the uppercase version of a string.
//
//
//endUp("Hello") → "HeLLO"
//endUp("hi there") → "hi thERE"
//endUp("hi") → "HI"


func endUp(word: String) -> String{
    if word.count>3 {
        let newPrefixWord = word.prefix(word.count-3)
        let newSuffixWord = word.suffix(3)
        return String(newPrefixWord+newSuffixWord.uppercased())
    }
    return word.uppercased()
}

print(endUp(word: "hi there"))

//Given a non-empty string and an int N, return the string made starting with char 0, and then every Nth char of the string. So if N is 3, use char 0, 3, 6, ... and so on. N is 1 or more.
//
//everyNth("Miracle", 2) → "Mrce"
//everyNth("abcdefg", 2) → "aceg"
//everyNth("abcdefg", 3) → "adg"


func everyNth(word: String, num: Int) -> String{
    var newWord = ""
    var count = 0
    for char in word {
        if(count%num==0){
            newWord = newWord+String(char)
        }
        count =  count + 1
    }
    return newWord
}

print(everyNth(word: "Miracle",num: 2))

//Given a string and a non-negative int n, return a larger string that is n copies of the original string.
//
//stringTimes("Hi", 2) → "HiHi"
//stringTimes("Hi", 3) → "HiHiHi"
//stringTimes("Hi", 1) → "Hi"


func stringTimes(word: String, num: Int) -> String{
    var newWord = ""
    for _ in 1...num {
        newWord = newWord + word
    }
    return newWord
}

print(stringTimes(word: "Hi",num: 3))

//Given a string and a non-negative int n, we'll say that the front of the string is the first 3 chars, or whatever is there if the string is less than length 3. Return n copies of the front;
//
//frontTimes("Chocolate", 2) → "ChoCho"
//frontTimes("Chocolate", 3) → "ChoChoCho"
//frontTimes("Abc", 3) → "AbcAbcAbc"


func frontTimes(word: String, num: Int) -> String{
    var newWord = ""
    var newReturnWord = ""
    if word.count >= 3 {
        newWord = newWord + String(word.prefix(3))
    }else{
        newWord = newWord + word
    }
    for _ in 1...num {
        newReturnWord = newReturnWord + newWord
    }
    return newReturnWord
}

print(frontTimes(word: "Abc",num: 3))

//Count the number of "xx" in the given string. We'll say that overlapping is allowed, so "xxx" contains 2 "xx".
//
//
//countXX("abcxx") → 1
//countXX("xxx") → 2
//countXX("xxxx") → 3


func countXX(word: String) -> Int{
    var newWord = ""
    var count = 0
    for char in word {
        newWord = newWord + String(char)
        if newWord.count == 2 {
            let wordPrefix = newWord.prefix(2)
            if wordPrefix.contains("xx") {
                count = count + 1
            }
            newWord = String(newWord.dropFirst())
        }
    }
    return count
}

print(countXX(word: "abcxxx"))


//Given a string, return true if the first instance of "x" in the string is immediately followed by another "x".
//
//
//doubleX("axxbb") → true
//doubleX("axaxax") → false
//doubleX("xxxxx") → true

func doubleX(word: String) -> Bool{
    var xWord = ""
    var xxWord = ""
    if !word.contains("x") || word.count <= 1{
        return false
    }else{
        for char in word {
            if char == "x" && xWord != "x"{
                xWord = "x"
            }else if (xWord == "x" && char == "x"){
                xxWord = "x"
            }else if(xWord == "x" && char != "x"){
                if xxWord == xWord {
                    xxWord = ""
                    xWord = ""
                }else{
                    return false
                }
            }
        }
        if xxWord != xWord {
            return false
        }
    }
    return true
}

print(doubleX(word: "xaxx"))

//Given a string, return a new string made of every other char starting with the first, so "Hello" yields "Hlo".
//
//
//stringBits("Hello") → "Hlo"
//stringBits("Hi") → "H"
//stringBits("Heeololeo") → "Hello"

func stringBits(word: String) -> String{
    var count = 0
    var newWord = ""
    for char in word {
        if count%2==0 {
            newWord = newWord + String(char)
        }
        count = count + 1
    }
    return newWord
}

print(stringBits(word: "Heeololeo"))

//Given a non-empty string like "Code" return a string like "CCoCodCode".
//
//stringSplosion("Code") → "CCoCodCode"
//stringSplosion("abc") → "aababc"
//stringSplosion("ab") → "aab"

func stringSplosion(word: String) -> String{
    var newWord = ""
    var helperWord = ""
    
    for char in word {
        helperWord += String(char)
        newWord += helperWord
    }
    return newWord
}

print(stringSplosion(word: "fade"))

//Given a string, return the count of the number of times that a substring length 2 appears in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we won't count the end substring).
//
//
//last2("hixxhi") → 1
//last2("xaxxaxaxx") → 1
//last2("axxxaaxx") → 2

func last2(word: String) -> Int{
    var count = 0
    var newWord = ""
    let wordsuffix = String(word.suffix(2))
    if word.count<=2 {
        return 0
    }else{
        for char in word {
            newWord = newWord + String(char)
            if newWord.count == 2 {
                let wordPrefix = newWord.prefix(2)
                if wordPrefix.contains(wordsuffix) {
                    count = count + 1
                }
                newWord = String(newWord.dropFirst())
            }
        }
    }
    return count-1
}

print(last2(word: ""))


//Given an array of ints, return the number of 9's in the array.
//
//arrayCount9([1, 2, 9]) → 1
//arrayCount9([1, 9, 9]) → 2
//arrayCount9([1, 9, 9, 3, 9]) → 3

func arrayCount9(numberArray: [Int]) -> Int{
    var count = 0
    for element in numberArray {
        if element == 9 {
            count += 1
        }
    }
    return count
}

print(arrayCount9(numberArray: [1, 2, 9]))


//Given an array of ints, return true if one of the first 4 elements in the array is a 9. The array length may be less than 4.
//
//arrayFront9([1, 2, 9, 3, 4]) → true
//arrayFront9([1, 2, 3, 4, 9]) → false
//arrayFront9([1, 2, 3, 4, 5]) → false

func arrayFront9(numberArray: [Int]){
    
}




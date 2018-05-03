//: Playground - noun: a place where people can play

import UIKit


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


func mixStart(word: String ) -> Bool{
    let newWord = word.dropFirst()
    if newWord.hasPrefix("ix") {
        return true
    }
    return false
}

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
print(mixStart(word: "pix edhbw"))
print(startOz(word: "pix edhbw"))
print(startOz(word: "ogx edhbw"))
print(startOz(word: "yze edhbw"))
print(startOz(word: "ozx edhbw"))
print(intMax(num1: 12, num2: 2, num3: 32))

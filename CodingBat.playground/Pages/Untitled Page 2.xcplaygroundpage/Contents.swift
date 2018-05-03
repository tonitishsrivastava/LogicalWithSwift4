//: [Previous](@previous)

import Foundation

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

print(countXX(word: "abcxx"))

//
//  Game.swift
//  Apple Pie
//
//  Created by Ryo Togashi on 2019-08-23.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incrrectMovesRemaining: Int
    var guessLetters: [Character]
    
    var formattedWord:String {
        var guessedWord = ""
        for letter in word {
            if guessLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessLetters.append(letter)
        
        if !word.contains(letter) {
            incrrectMovesRemaining -= 1
        }
    }
    
    
}

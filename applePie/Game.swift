//
//  Game.swift
//  applePie
//
//  Created by Mateusz Pałka on 03.08.2017.
//  Copyright © 2017 Mateusz Pałka. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemainging: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed (letter: Character){
        guessedLetters.append(letter)
        if !word.characters.contains(letter){
            incorrectMovesRemainging -= 1
        }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            }   else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}


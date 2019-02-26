//
//  hangMan.swift
//  Hangman
//
//  Created by Divi Schmidt on 2/26/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation

class HangMan {
    let secretWord: String;
    var secretWordArray: Array<String?>;
    var badGuesses: Int;
    
    let wordBank = ["awkward", "bagpipes", "banjo", "bungler", "croquet", "crypt", "dwarves", "fervid", "fishhook", "fjord", "gazebo", "gypsy", "haiku", "haphazard", "hyphen", "ivory", "jazzy", "jiffy", "jinx", "jukebox", "kayak", "kiosk", "klutz", "memento", "mystify", "numbskull", "ostracize", "oxygen", "pajama", "phlegm", "pixel", "polka", "quad",  "quip" ,"rhythmic" ,"rogue" ,"sphinx","squawk" ,"swivel" ,"toady" ,"twelfth" ,"unzip" ,"waxy" ,"wildebeest" ,"yacht" ,"zealous" ,"zigzag" ,"zippy", "zombie"]
    
    let alphabet = ["a", "b" , "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    init() {
        let randnum: Int = Int.random(in: 0..<wordBank.count)
        self.secretWord = wordBank[randnum]
        self.secretWordArray = Array(repeating: nil, count: secretWord.count )
        self.badGuesses = 0
    }
    
    func isInSecretWord(guess g: String) -> Bool {
        let charset = CharacterSet(charactersIn: self.secretWord)
        if self.secretWord.rangeOfCharacter(from: charset) != nil {
            return true;
        }
        return false;
    }
    
    // outputs a new word array to render to the screen
    func update(guess g: String) {
        
    }
        
    
    
    
}

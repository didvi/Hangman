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
    
    let wordBank = ["awkward", "bagpipes", "banjo", "bungler", "croquet", "crypt", "dwarves", "fervid", "fishhook", "fjord", "gazebo", "gypsy", "haiku", "haphazard", "hyphen", "ivory", "jazzy", "jiffy", "jinx", "jukebox", "kayak", "kiosk", "klutz", "memento", "mystify", "numbskull", "ostracize", "oxygen", "pajama", "phlegm", "pixel", "polka", "quad",  "quip" ,"rhythmic" ,"rogue" ,"sphinx","squawk" ,"swivel" ,"toady" ,"twelfth" ,"unzip" ,"waxy" ,"wildebeest" ,"yacht" ,"zealous" ,"zigzag" ,"zippy", "zombie"]
    
    init() {
        let randnum: Int = Int.random(in: 0..<wordBank.count)
        self.secretWord = wordBank[randnum]
    }
    
    func isInSecretWord(guess g:String) => Boolean {
        let charset = CharacterSet(charactersIn: self.secretWord)
        if str.rangeOfCharacter(from: charset) != nil {
            return true;
        }
    return false:
    }
    
    
    
}

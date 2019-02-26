//
//  HangmanViewController
//  Hangman
//
//  Created by David [Entei] Xiong on 2/19/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    let hangman = HangMan()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func keyClick(_ sender: UIButton) {
        var letterPressed = sender.title(for: .normal)
        if hangman.isInSecretWord(guess letterPressed) {
            label.text = hangman.update(letterPressed)
        }
        else {
            hangman.guessesRemaining -= 1;
            
        }
    }
}


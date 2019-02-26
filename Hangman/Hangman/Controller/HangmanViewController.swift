//
//  HangmanViewController
//  Hangman
//
//  Created by David [Entei] Xiong on 2/19/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func keyClick(_ sender: UIButton) {
        var letterPressed = sender.text
        if HangMan.isInSecretWord(letterPressed) {
            label.text = HangMan.update(letterPressed)
        }
        else {
            HangMan.guessesRemaining -= 1;
            
        }
    }
}


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
    var hangmanImage = UIImage(named: "hangman1")
    
    
    @IBOutlet weak var MyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func keyClick(_ sender: UIButton) {
        var letterPressed = sender.title(for: .normal)
        if hangman.isInSecretWord(letterPressed) {
            MyLabel.text = hangman.update(letterPressed)
        }
        else {
            hangman.badGuesses += 1;
        }
    }


    
    func changeImage() {
        if hangman.badGuesses == 0 {
            hangmanImage = UIImage(named: "hangman1")
        }
        if hangman.badGuesses == 1 {
            hangmanImage = UIImage(named: "hangman2")
        }
        if hangman.badGuesses == 2 {
            hangmanImage = UIImage(named: "hangman3")
        }
        if hangman.badGuesses == 3 {
            hangmanImage = UIImage(named: "hangman4")
        }
        if hangman.badGuesses == 4 {
            hangmanImage = UIImage(named: "hangman5")
        }
        if hangman.badGuesses == 5 {
            hangmanImage = UIImage(named: "hangman6")
        }
        if hangman.badGuesses == 6 {
            hangmanImage = UIImage(named: "hangman7")
        }
    }
}


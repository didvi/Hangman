//
//  HangmanViewController
//  Hangman
//
//  Created by David [Entei] Xiong on 2/19/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

//checking github
import UIKit

class HangmanViewController: UIViewController {

    var hangman = HangMan()
    @IBOutlet weak var hangmanGraphics: UIImageView!
    
    
    @IBOutlet var wordDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hangmanGraphics.image = UIImage(named: "hangman1")
        self.wordDisplay.text = String(hangman.displayArray)
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func startGame(_ sender: Any) {
        hangman = HangMan()
        performSegue(withIdentifier: "toGame", sender: nil)
        
       // self.wordDisplay.text = String(hangman.displayArray)
    }
    
    @IBAction func keyClick(_ sender: UIButton) {
        var letterPressed = (sender.title(for: .normal))!
        letterPressed = letterPressed.lowercased()
        let charLetterPressed = Character(letterPressed)
        if hangman.isInSecretWord(charLetterPressed){
            self.wordDisplay.text = hangman.update(charLetterPressed)
            checkWin()
        }
        else {
            hangman.badGuesses += 1;
            changeImage()
            checkLose()
        }
    }

    func changeImage() {
        switch hangman.badGuesses {
        case 0:
            hangmanGraphics.image = UIImage(named: "hangman1")
        case 1:
            hangmanGraphics.image = UIImage(named: "hangman2")
        case 2:
            hangmanGraphics.image = UIImage(named: "hangman3")
        case 3:
            hangmanGraphics.image = UIImage(named: "hangman4")
        case 4:
            hangmanGraphics.image = UIImage(named: "hangman5")
        case 5:
            hangmanGraphics.image = UIImage(named: "hangman6")
        case 6:
            hangmanGraphics.image = UIImage(named: "hangman7")
        default:
            hangmanGraphics.image = UIImage(named: "hangman1")
        }
    }
    
    func checkLose() {
        if hangman.badGuesses >= 7 {
            performSegue(withIdentifier: "toLose", sender: nil)
        }
    }
    
    func checkWin() {
        if hangman.secretWordArray == hangman.displayArray {
            performSegue(withIdentifier: "toWin", sender: nil)
        }
    }
}


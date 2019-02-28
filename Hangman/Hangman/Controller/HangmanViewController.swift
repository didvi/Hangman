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
    var hangmanImage = UIImage(named: "hangman1")
    
    
    @IBOutlet var MyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func startGame(_ sender: Any) {
        hangman = HangMan()
        performSegue(withIdentifier: "toGame", sender: nil)
        MyLabel.text = String(hangman.displayArray)
    }
    
    @IBAction func keyClick(_ sender: UIButton) {
        let letterPressed = (sender.title(for: .normal))!
        if hangman.isInSecretWord(letterPressed){
            MyLabel.text = hangman.update(Character(letterPressed))
            checkWin()
        }
        else {
            hangman.badGuesses += 1;
            hangmanImage = UIImage(named: "hangman1")
            checkLose()
        }
    }

    func changeImage() {
        switch hangman.badGuesses {
        case 0:
            hangmanImage = UIImage(named: "hangman1")
        case 1:
            hangmanImage = UIImage(named: "hangman2")
        case 2:
            hangmanImage = UIImage(named: "hangman3")
        case 3:
            hangmanImage = UIImage(named: "hangman4")
        case 4:
            hangmanImage = UIImage(named: "hangman5")
        case 5:
            hangmanImage = UIImage(named: "hangman6")
        case 6:
            hangmanImage = UIImage(named: "hangman7")
        default:
            hangmanImage = UIImage(named: "hangman1")
        }
    }
    
    func checkLose() {
        if hangman.badGuesses == 0 {
            performSegue(withIdentifier: "toLose", sender: nil)
        }
    }
    
    func checkWin() {
        if hangman.secretWordArray == hangman.displayArray {
            performSegue(withIdentifier: "toWin", sender: nil)
        }
    }
}


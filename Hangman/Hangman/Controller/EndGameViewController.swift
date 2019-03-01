//
//  EndGameViewController.swift
//  Hangman
//
//  Created by Sophia Song on 2/28/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startGame(_ sender: Any) {
        performSegue(withIdentifier: "start", sender: nil)
        // self.wordDisplay.text = String(hangman.displayArray)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

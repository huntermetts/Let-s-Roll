//
//  ViewController.swift
//  dicee
//
//  Created by Hunter James Metts on 1/19/19.
//  Copyright © 2019 Hunter James Metts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    declaring dice images from assets in a dice array
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
//    Connects design files (dice1 and 2) to the code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//   Linking the button "ROLL" with the function (what happens when user presses the button "ROLL"
    @IBAction func rollButtonPressed(_ sender: Any) {
//  Assigning randomDiceIndex1 to a random Int between 0-5 (6 numbers                 total)
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
//        "console.log-ing" to make sure the random numbers are printing
        print(randomDiceIndex1)
        
//        Refers to "diceImageView1 on line 17 and targets the image property and setting it equal to the "dice2" assest in the assets folder
        
//        Then replaces "dice2" with the "diceArray" on line 14. After that, the random number that was generated from line 36 is passed into the array, creating a random number effect.
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
//        doing the same process for the 2nd dice
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    

}


//
//  ViewController.swift
//  DiceeApp
//
//  Created by 247 on 03/07/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// Inialisasi Variabel
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    // Dadu
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }
    //Button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateImages()
    }
    func updateImages() {
        // Random Code
        randomDiceIndex1  =  Int((arc4random_uniform(6)))
        randomDiceIndex2  =  Int(arc4random_uniform(6))
        
        //Output
//        print(randomDiceIndex1)
//        print(randomDiceIndex2)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}


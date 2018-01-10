//
//  ViewController.swift
//  Dicee
//
//  Created by Jake Herman on 1/10/18.
//  Copyright © 2018 Jake Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6) + 1)
        randomDiceIndex2 = Int(arc4random_uniform(6) + 1)
        
        diceImageView1.image = UIImage(named: "dice" + String(randomDiceIndex1))
        diceImageView2.image = UIImage(named: "dice" + String(randomDiceIndex2))
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}


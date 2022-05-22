//
//  ViewController.swift
//  War Card Game
//
//  Created by Anthony Butler on 8/9/21.
//  Copyright © 2021 Anthony Butler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftimageView: UIImageView!
    
    @IBOutlet weak var rightimageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        
        
        let rightNumber = Int.random(in: 2...14)
               
        // Update the image views
        leftimageView.image = UIImage(named: "card\(leftNumber)")
        
        rightimageView.image = UIImage(named: "card\(rightNumber)")
        
        //Compare the random numbers
        if leftNumber > rightNumber {
            leftScore += 1
            //Left side wins
            leftScoreLabel.text = String(leftScore)
        }
        
        else if leftNumber < rightNumber {
            rightScore += 1
            //Right side wins
            rightScoreLabel.text = String(rightScore)
        }
        else {
            //tie
        }
    }
    
    
}


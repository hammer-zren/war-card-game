//
//  ViewController.swift
//  WarCardGame
//
//  Created by ZHONGTAO REN on 12/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: "card\(leftCardNumber)")
        rightImageView.image = UIImage(named: "card\(rightCardNumber)")
        
        if leftCardNumber > rightCardNumber {
            leftScore += 1
        }
        else if leftCardNumber < rightCardNumber {
            rightScore += 1
        }
        else {
            
        }
        
        leftScoreLabel.text = "\(leftScore)"
        rightScoreLabel.text = "\(rightScore)"
    }
    
}


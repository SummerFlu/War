//
//  ViewController.swift
//  War
//
//  Created by ilabuser on 7/15/18.
//  Copyright © 2018 Anson Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func DealTap(_ sender: Any) {
        //Randomizes Numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //Changes Images
        LeftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightRandomNumber)")
 
        //Updates Score
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
        //Changes Label
            LeftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            
            //Updates Score
            rightScore += 1
            //Changes Label
            RightScoreLabel.text = String(rightScore)
            
        }
        else if leftRandomNumber == rightRandomNumber{
    }
    
    

}


}

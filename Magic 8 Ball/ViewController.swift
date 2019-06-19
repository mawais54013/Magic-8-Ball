//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by muhammad Awais on 6/18/19.
//  Copyright © 2019 muhammad Awais. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallIndex: Int = 0
    
    @IBOutlet weak var ballImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updatedBallImages()
    }
    

    @IBAction func askButton(_ sender: UIButton) {
        updatedBallImages() 
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updatedBallImages()
    }
    
    func updatedBallImages () {
        randomBallIndex = Int.random(in: 0 ... 4)
        
        print(randomBallIndex)
        
        ballImage1.image = UIImage(named: ballArray[randomBallIndex])
    }
}


//
//  ViewController.swift
//  Animations
//
//  Created by Dylan Castanhinha on 5/13/16.
//  Copyright © 2016 Dylan Castanhinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    var myNumber = 0
    
    var timer = NSTimer()
    
    var nextAnimationTimer = NSTimer()
    
    var isAnimating = true
    
    var animationPosition = -1
    
    var correctOrder: [Int] = []
    
    var arrayCounter:Int = 0
    
    @IBOutlet var alienImage: UIImageView!
    @IBOutlet var rightImage: UIImageView!
    @IBOutlet var leftImage: UIImageView!
    @IBOutlet var downImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        for var i = 0; i <= 5; i++ {
            
            animationPosition = 0
            
            correctOrder.append(animationPosition)
            
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.08, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        

        print(correctOrder)
    
    }
    
    
    func doAnimation() {
        myNumber++
        print(myNumber)
        
        if counter == 10 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }

        
        if animationPosition == 0 {
            
            alienImage.image = UIImage(named: "upframe\(counter).jpg")
            
            
        } else if animationPosition == 1 {
            
            rightImage.image = UIImage(named: "rightframe\(counter).jpg")
            
            
        } else if animationPosition == 2 {
            
            leftImage.image = UIImage(named: "leftframe\(counter).jpg")
            
            
        } else if animationPosition == 3 {
            
            downImage.image = UIImage(named: "downframe\(counter).jpg")
            
            
        } else if animationPosition == -1 {
            
            // Do something
            
            print("Animation Position is at -1")
            
            }
        
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hi

    

}


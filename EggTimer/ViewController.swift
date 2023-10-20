//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes : [String: Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer = Timer()
    var secondsRemaining: Int = 1
    var cookTime: Int = 1
    
    
    @IBOutlet weak var progressView: UIProgressView!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        cookTime = secondsRemaining
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        let timeElapsed: Int = cookTime - secondsRemaining
        let progress: Float = Float(timeElapsed) / Float(cookTime)
//        print("progress should be \(timeElapsed / cookTime)")
//        print("CookTime: \(cookTime)")
//        print("SecondsReamaining: \(secondsRemaining)")
//        print("Progress: \(progress)")
        progressView.setProgress(progress, animated: true)
        
        if secondsRemaining == 0 {
            timer.invalidate()
            print("Done!")
        } else {
            print("Time left: \(secondsRemaining)")
            secondsRemaining -= 1
        }
        
        
    }

}
